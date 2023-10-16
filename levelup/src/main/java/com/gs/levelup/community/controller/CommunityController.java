package com.gs.levelup.community.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.common.FileNameChange;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.community.model.service.CommunityService;
import com.gs.levelup.community.model.vo.Community;
import com.gs.levelup.employee.model.vo.Employee;
import com.gs.levelup.notice.model.vo.Notice;

@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Autowired
	private CommunityService communityService;

	// Community test 페이지 이동처리용
	@RequestMapping("movecom.do")
	public String moveCom() {
		return "community/comlist";
	}

	// Community detail test 페이지 이동처리용
	@RequestMapping("movecomdetail.do")
	public String moveComDetail() {
		return "community/comDetail";
	}

	@RequestMapping("comdelete.do")
	public String deleteCommunity(String boardId, Model model, int currentPage) {
		communityService.deleteCommunity(boardId);
		return null;
	}

	// 요청 결과 처리용

	@RequestMapping(value = "comtop.do", method = RequestMethod.POST)
	@ResponseBody
	// json string 을 response body 에 담아서 내보낸다
	public String selectCommunityTop() throws UnsupportedEncodingException {
		// ajax 요청시 리턴 방법은 여러가지가 있음
		// response 객체 이용시에는 2가지 중 선택 가능
		// 1. 출력 스트림을 별도로 만들어서 응답하는 방법(아이디 중복 체크)
		// 2. view resolver 로 리턴하는 방법 : response body 에 내보낼 값을 저장함
		// JSONView 클래스 등록 처리되어 있어야 함 : servlet-context.xml

		// 최근 공지된 공지글 3개 조회해 옴
		communityService.selectCommunityTop();

		return null;
		// 리턴 값은 뷰리졸버로 간다. 뷰리졸버는 json스트링을 처리할 수 없다
		// servlet-context.xml 에 jsonString 내보내는 JSONView 라는 뷰리졸버를 추가 등록해야 함

	}

	// 공지사항 전체 목록보기 요청 처리용
	@RequestMapping("comlist.do")
	public String selectList(@RequestParam(name = "currentPage", required = false) String page,
			@RequestParam(name = "limit", required = false) String slimit, Model model) {
		int currentPage = 1;
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한 페이지에 공지 10개씩 출력되게 한다면
		int limit = 10;
		if (slimit != null) {
			limit = Integer.parseInt(slimit);
		}

		// 페이지 관련 항목 계산 처리
		int listCount = communityService.selectListCount();
		Paging paging = new Paging(listCount, currentPage, limit, "nlist.do");
		paging.calculator();

		// 페이지에 ㅊㄹ력할 목록 조회해 옴
		ArrayList<Community> list = communityService.selectList(paging);

		if (list != null && list.size() > 0) {
			model.addAttribute("list", list);
			model.addAttribute("paging", paging);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("limit", limit);

			return "";
		} else {
			model.addAttribute("message", currentPage + "페이지 목록 조회 실패");
			return "common/error";
		}
	}

	// 새 공지글 등록 처리 - 파일업로드 기능 추가
	@RequestMapping(value = "cominsert.do", method = RequestMethod.POST)
	public String insertCommunityArticle(Community community, Model model, int currentPage, HttpServletRequest request,
			@RequestParam(name = "ofile", required = false) MultipartFile mfile) {
		logger.info("cominsert.do : " + community);

		// 공지사항 첨부파일 저장 폴더 경로 지정
		String savePath = request.getSession().getServletContext().getRealPath("resources/notice_upfiles");

		// 전송온 파일이름 추출함
		String fileName = mfile.getOriginalFilename();
		String renameFileName = null;

		// 첨부파일이 있을 때
		if (!mfile.isEmpty()) {

			// 저장폴더에는 변경된 이름으로 저장 처리
			// 파일 이름 바꾸기함: 년월일시분초.확장자
			if (fileName != null && fileName.length() > 0) {
				// 바꿀 파일명에 대한 문자열 만들기
//				renameFileName = FileNameChange.change(fileName, savePath ,"yyyyMMddHHmmss");
				// 저장 폴더에 파일명 바꾸기 처리
				try {
					mfile.transferTo(new File(savePath + "\\" + renameFileName));

				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("message", "첨부파일 저장 실패");
					return "common/error";
				}
			} // 파일명 바꾸기
		} // 첨부파일 있을 때
			// notice 객체에 첨부파일 정보 저장 처리
//		community.setOriginalFilePath(fileName);
//		community.setRenameFilePath(renameFileName);

		if (communityService.insertCommunity(community) > 0) {
			// 공지글 등록 성공시 목록보기 페이지로 이동
			return "redirect:nlist.do";
		} else {
			model.addAttribute("message", "새 공지글 등록 실패");
			return "common/error";
		}
	}

	// 공지글 상세보기 요청 처리용
	@RequestMapping("comdetail.do")
	public ModelAndView selectCommunity(@RequestParam("boardNo") int boardNo, ModelAndView mv, HttpSession session) {
		// 관리자용 상세보기 페이지와 일반회원 | 비회원 상세보기 페이지 구분해서 내보내기
		// 관리자인지 확인하기 위해 session 매개변수 추가함
		Community community = communityService.selectCommunity(boardNo);

		// 조회수 1증가 처리
		communityService.updateReadCount(boardNo);

//		if(notice != null) {
//			mv.addObject("notice", notice);
//			
//			Employee loginEmployee = (Employee)session.getAttribute("loginEmployee");
//			if(loginEmployee != null && loginEmployee.getAdmin().equals("Y")) {
//				mv.setViewName("notice/noticeAdminDetailView");
//			} else {
//				mv.setViewName("notice/noticeDetailView");
//			}
//		} else {
//			mv.addObject("message", noticeno + "번 공지글 상세조회 실패");
//			mv.setViewName("common/error");
//		}

		return mv;
	}

	// 첨부파일
	@RequestMapping("comfdown.do")
	public ModelAndView fileDownMethod(ModelAndView mv, HttpServletRequest request,
			@RequestParam("ofile") String originalFileName, @RequestParam("rfile") String renameFileName) {
		// 파일 다운 메소드는 리턴타입이 ModelAndView 로 정해져 있음
		String savePath = request.getSession().getServletContext().getRealPath("resources/notice_upfiles");

		// 저장 폴더에서 읽을 파일에 대한 파일 객체 생성함
		File renameFile = new File(savePath + "\\" + renameFileName);
		// 파일 다운시 브라우저 내보낼 원래 파일이름에 대한 파일 객체 생성
		File originFile = new File(originalFileName);

		// 파일 다운로드용 뷰로 전달할 정보 저장 처리
		mv.setViewName("filedown");
		// 등록된 파일다운로드용 뷰클래스의 id명
		// 뷰클래스 order 에 따라 파일다운로드를 먼저 찾고 없으면 jsp 리졸버로 넘어감
		mv.addObject("renameFile", renameFile);
		mv.addObject("originFile", originFile);

		return mv;

	}

	// 공지글 수정 요청 처리용 (파일 업로드 기능 사용)
	@RequestMapping(value = "comupdate.do", method = RequestMethod.POST)
	public String updateCommunity(Community community, Model model, HttpServletRequest request,
			@RequestParam(name = "deleteFlag", required = false) String delFlag,
			@RequestParam(name = "upfile", required = false) MultipartFile mfile) {
		logger.info("comupdate.do: " + community);

		// 공지사항 첨부파일 저장 폴더 경로 지정
		String savePath = request.getSession().getServletContext().getRealPath("resources/notice_upfiles");

		// 첨부파일이 변경된 경우
		// 1. 원래 첨부파일이 있는데 '파일삭제'를 선택한 경우
		// 또는 원래 첨부파일이 있는데 새로운 첨부파일이 업로드 된 경우
//		if(community.getOriginalFilePath() != null && 
//				(delFlag != null && delFlag.equals("yes"))
//				|| !mfile.isEmpty()) {
//			// 저장 폴더에서 파일 삭제하고
//			new File(savePath + "\\" + community.getRenameFilePath()).delete();
//			// notice 안의 파일 정보도 제거
//			community.setOriginalFilePath(null);
//			community.setRenameFilePath(null);
//		}

		// 전송온 파일이름 추출함
		String fileName = mfile.getOriginalFilename();
		String renameFileName = null;

		// 새로운 첨부파일이 있을 때
		if (!mfile.isEmpty()) {

			// 저장폴더에는 변경된 이름으로 저장 처리
			// 파일 이름 바꾸기함: 년월일시분초.확장자
			if (fileName != null && fileName.length() > 0) {
				// 바꿀 파일명에 대한 문자열 만들기
//				renameFileName = FileNameChange.change(fileName, savePath,"yyyyMMddHHmmss");
				// 저장 폴더에 파일명 바꾸기 처리
				try {
					mfile.transferTo(new File(savePath + "\\" + renameFileName));

				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("message", "첨부파일 저장 실패");
					return "common/error";
				}
			} // 파일명 바꾸기
		} // 첨부파일 있을 때

		if (communityService.updateCommunity(community) > 0) {
			// 공지글 수정 성공시 목록 보기 페이지로 이동
			return "redirect:comlist.do";
		} else {
			model.addAttribute("message", community.getBoardId() + "번 공지 수정 실패");
			return "common/error";
		}

	}

	// 공지글 제목 검색용 (페이징 처리 포함)
	@RequestMapping(value = "comSearchTitle.do", method = RequestMethod.POST)
	public ModelAndView selectSearchTitle(@RequestParam("action") String action,
			@RequestParam("keyword") String keyword, @RequestParam(name = "limit", required = false) String slimit,
			@RequestParam(name = "page", required = false) String page, ModelAndView mv) {
		// 검색 결과에 대한 페이징 처리
		// 검색 결과에 대한 페이징 처리
		// 출력할 페이지 지정
		int currentPage = 1;
		// 전송온 페이지 값이 있다면 추출함
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한 페이지당 출력할 목록 갯수 지정
		int limit = 10;
		// 전송온 limit 값이 있다면
		if (slimit != null) {
			limit = Integer.parseInt(slimit);
		}

		// 총페이지수 계산을 위한 검색결과 적용된 총 목록 갯수 조회
		int listCount = communityService.selectSearchTitleCount(keyword);

		// 뷰 페이지에 사용할 페이징 관련 값 계산처리
		Paging paging = new Paging(listCount, currentPage, limit, "comSearchTitle.do");
		paging.calculator();

		// 2. 서비스 메소드 호출하고 리턴 결과 다루기
		Search search = new Search();
		search.setStartRow(paging.getStartRow());
		search.setEndRow(paging.getEndRow());
		search.setKeyword(keyword);

		ArrayList<Community> list = communityService.selectSearchTitle(search);

		// 받은 결과에 따라 성공/ 실패 페이지 내보내기
		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.addObject("currentPage", currentPage);
			mv.addObject("limit", limit);
			mv.addObject("action", action);
			mv.addObject("keyword", keyword);

			mv.setViewName("notice/noticeListView");
		} else {
			mv.addObject("message", action + "에 대한 " + keyword + " 검색 결과가 존재하지 않습니다.");
			mv.setViewName("common/error");
		}

		return mv;
	}

	// 게시글 내용 검색용 (페이징 처리 포함)
	@RequestMapping(value = "comSearchContent.do", method = RequestMethod.POST)
	public ModelAndView noticeSearchContentMethod(@RequestParam("action") String action,
			@RequestParam("keyword") String keyword, @RequestParam(name = "limit", required = false) String slimit,
			@RequestParam(name = "page", required = false) String page, ModelAndView mv) {
		// 검색 결과에 대한 페이징 처리
		// 출력할 페이지 지정
		int currentPage = 1;
		// 전송온 페이지 값이 있다면 추출함
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한 페이지당 출력할 목록 갯수 지정
		int limit = 10;
		// 전송온 limit 값이 있다면
		if (slimit != null) {
			limit = Integer.parseInt(slimit);
		}

		// 총페이지수 계산을 위한 검색결과 적용된 총 목록 갯수 조회
		int listCount = communityService.selectSearchContentCount(keyword);

		// 뷰 페이지에 사용할 페이징 관련 값 계산처리
		Paging paging = new Paging(listCount, currentPage, limit, "nsearchContent.do");
		paging.calculator();

		// 2. 서비스 메소드 호출하고 리턴 결과 다루기
		Search search = new Search();
		search.setStartRow(paging.getStartRow());
		search.setEndRow(paging.getEndRow());
		search.setKeyword(keyword);

		ArrayList<Community> list = communityService.selectSearchContent(search);

		// 받은 결과에 따라 성공/ 실패 페이지 내보내기
		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.addObject("currentPage", currentPage);
			mv.addObject("limit", limit);
			mv.addObject("action", action);
			mv.addObject("keyword", keyword);

			mv.setViewName("notice/noticeListView");
		} else {
			mv.addObject("message", action + "에 대한 " + keyword + " 검색 결과가 존재하지 않습니다.");
			mv.setViewName("common/error");
		}
		return mv;
	}

	// 게시글 등록날짜 검색용 (페이징 처리 포함)
	@RequestMapping(value = "comSearchDate.do", method = RequestMethod.POST)
	public ModelAndView noticeSearchDateMethod(SearchDate searchDate, @RequestParam("action") String action,
			@RequestParam(name = "limit", required = false) String slimit,
			@RequestParam(name = "page", required = false) String page, ModelAndView mv) {
		// 검색 결과에 대한 페이징 처리
		// 출력할 페이지 지정
		int currentPage = 1;
		// 전송온 페이지 값이 있다면 추출함
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한 페이지당 출력할 목록 갯수 지정
		int limit = 10;
		// 전송온 limit 값이 있다면
		if (slimit != null) {
			limit = Integer.parseInt(slimit);
		}

		// 총페이지수 계산을 위한 검색결과 적용된 총 목록 갯수 조회
		int listCount = communityService.selectSearchDateCount(searchDate);

		// 뷰 페이지에 사용할 페이징 관련 값 계산처리
		Paging paging = new Paging(listCount, currentPage, limit, "nsearchDate.do");
		paging.calculator();

		// 2. 서비스 메소드 호출하고 리턴 결과 다루기
		Search search = new Search();
		search.setStartRow(paging.getStartRow());
		search.setEndRow(paging.getEndRow());
		search.setBegin(searchDate.getBegin());
		search.setEnd(searchDate.getEnd());

		ArrayList<Community> list = communityService.selectSearchDate(search);

		// 받은 결과에 따라 성공/ 실패 페이지 내보내기
		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.addObject("currentPage", currentPage);
			mv.addObject("limit", limit);
			mv.addObject("action", action);
			mv.addObject("begin", searchDate.getBegin());
			mv.addObject("end", searchDate.getEnd());

			mv.setViewName("notice/noticeListView");
		} else {
			mv.addObject("message", action + "에 대한" + searchDate.getBegin() + "부터 " + searchDate.getEnd()
					+ " 기간 사이의 검색 결과가 존재하지 않습니다.");
			mv.setViewName("common/error");
		}
		return mv;
	}
}
