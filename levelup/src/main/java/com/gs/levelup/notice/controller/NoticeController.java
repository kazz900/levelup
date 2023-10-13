package com.gs.levelup.notice.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
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
import com.gs.levelup.employee.model.vo.Employee;
import com.gs.levelup.notice.model.service.NoticeService;
import com.gs.levelup.notice.model.vo.Notice;



@Controller
public class NoticeController {
	//이 컨트롤러 안의 메소드들이 구동되는지, 값이 잘 전달되었는지 확인을 위한 로그 객체를 생성
		private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
		
		@Autowired
		private NoticeService noticeService;
		
		//뷰 페이지 내보내기용 -----------------------------------
		//새 공지글 등록 페이지 이동 처리용
		@RequestMapping("moveWrite.do")
		public String moveWritePage() {
			return "notice/noticeWriteForm";
		}
		
		//공지글 수정페이지로 이동 처리용
		@RequestMapping("nmoveup.do")
		public ModelAndView moveUpdatePage(
				@RequestParam("noticeno") int noticeno, ModelAndView mv) {
			
			return mv;
		}
		
		
		
		//요청 결과 처리용 ----------------------------------------
		
		
		
		@RequestMapping(value="ntop3.do", method=RequestMethod.POST)
		@ResponseBody
		public String noticeNewTop3Method() throws UnsupportedEncodingException {
			
			return null;	
			
		}
		
		//공지사항 전체 목록보기 요청 처리용
		@RequestMapping("nlist.do")
		public String noticeListMethod(
				@RequestParam(name="page", required=false) String page, 
				@RequestParam(name="limit", required=false) String slimit, 
				Model model) {
			int currentPage = 1;
			if (page != null) {
				currentPage = Integer.parseInt(page);
			}
			
			//한 페이지 공지 10개씩 출력되게 한다면
			int limit = 10;
			if (slimit != null) {
				limit = Integer.parseInt(slimit);
			}
			
			//총 페이지 수 계산을 위한 공지글 총 갯수 조회
			int listCount = noticeService.selectListCount();
			Paging paging = new Paging(listCount, currentPage, limit, "nlist.do");
			paging.calculator();
			
			ArrayList<Notice> list = noticeService.selectList(paging);
			
			if(list != null && list.size() > 0) {
				model.addAttribute("list", list);
				model.addAttribute("paging", paging);
				model.addAttribute("currentPage", currentPage);
				model.addAttribute("limit", limit);
				
				return "notice/noticeListView";
			}else {
				model.addAttribute("message", currentPage + "페이지 목록 조회 실패!");
				return "common/error";
			}
			
		}
		
		//새 공지글 등록 요청 처리용 (파일 업로드 기능 추가)
		@RequestMapping(value="ninsert.do", method=RequestMethod.POST)
		public String noticeInsertMethod(Notice notice, Model model, HttpServletRequest request,
					@RequestParam(name="ofile", required=false) MultipartFile mfile) {
			
				return "common/error";
		}
		
		
		//공지글 상세보기 요청 처리용 
		@RequestMapping("ndetail.do")
		public ModelAndView noticeDetailMethod(
				@RequestParam("noticeno") int noticeno, ModelAndView mv, HttpSession session) {
			
			
			return mv;
		}
		
		//첨부파일 다운로드 요청 처리용
		@RequestMapping("nfdown.do")
		public ModelAndView fileDownMethod(
				ModelAndView mv, HttpServletRequest request,
				@RequestParam("ofile") String originalFileName,
				@RequestParam("rfile") String renameFileName) {
			//파일 다운 메소드는 리턴 타입이 ModelAndView 로 정해져 있음
			
			//공지사항 첨부파일 저장 폴더 경로 지정
			String savePath = request.getSession().getServletContext().getRealPath(
					"resources/notice_upfiles");
			
			//저장 폴더에서 읽을 파일에 대한 파일 객체 생성함
			File renameFile = new File(savePath + "\\" + renameFileName);
			//파일 다운 시 브라우저로 내보낼 원래 파일 이름에 대한 파일 객체 생성함
			File originFile = new File(originalFileName);
			
			//파일 다운로드용 뷰로 전달할 정보 저장 처리
			mv.setViewName("filedown");	//등록된 파일다운로드용 뷰클래스의 id명
			mv.addObject("renameFile", renameFile);
			mv.addObject("originFile", originFile);
			
			return mv;
		}
		
		//공지글 수정 요청 처리용 (파일 업로드 기능 사용)
		@RequestMapping(value="nupdate.do", method=RequestMethod.POST)
		public String noticeUpdateMethod(Notice notice, Model model,
				HttpServletRequest request,
				@RequestParam(name="deleteFlag", required=false) String delFlag,
				@RequestParam(name="upfile", required=false) MultipartFile mfile) {
				return "common/error";
			
		}
		
		//공지글 삭제 요청 처리용
		@RequestMapping("ndelete.do")
		public String noticeDeleteMethod(
				@RequestParam("noticeno") int noticeno,
				@RequestParam(name="rfile", required=false) String renameFileName,
				HttpServletRequest request, Model model) {
		
				return "common/error";
			
			
		}
		
		//공지글 제목 검색용 (페이징 처리 포함)
		@RequestMapping(value="nsearchTitle.do", method=RequestMethod.POST)
		public ModelAndView noticeSearchTitleMethod(
				@RequestParam("action") String action, 
				@RequestParam("keyword") String keyword,
				@RequestParam(name="limit", required=false) String slimit,
				@RequestParam(name="page", required=false) String page,
				ModelAndView mv) {
			
			//검색 결과에 대한 페이징 처리
			//출력할 페이지 지정
			int currentPage = 1;
			//전송온 페이지 값이 있다면 추출
			if(page != null) {
				currentPage = Integer.parseInt(page);
			}
			
			//한 페이지당 출력할 목록 갯수 지정
			int limit = 10;
			//전송 온 limit 값이 있다면 
			if(slimit != null) {
				limit = Integer.parseInt(slimit);
			}
			
			//총 페이지수 계산을 위한 검색 결과 적용된 총 목록 갯수 조회
			int listCount = noticeService.selectSearchTitleCount(keyword);
			
			//뷰 페이지에 사용할 페이징 관련 값 계산 처리
			Paging paging = new Paging(listCount, currentPage, limit, "nsearchTitle.do");
			paging.calculator();
			
			
			//서비스 메소드 호출하고 리턴결과 받기
			Search search = new Search();
			search.setStartRow(paging.getStartRow());
			search.setEndRow(paging.getEndRow());
			search.setKeyword(keyword);
			
			ArrayList<Notice> list = noticeService.selectSearchTitle(search);
			
			//받은 결과에 따라 성공/실패 페이지 내보내기
			if(list != null && list.size() > 0) {
				mv.addObject("list", list);
				mv.addObject("paging", paging);
				mv.addObject("currentPage", currentPage);
				mv.addObject("limit", limit);
				mv.addObject("action", action);
				mv.addObject("keyword", keyword);
				mv.setViewName("notice/noticeListView");
			}else {
				mv.addObject("message", action + "에 대한 " 
								+ keyword + " 검색 결과가 존재하지 않습니다.");
				mv.setViewName("common/error");
			}
			
			return mv;
			
		}
		
		//공지글 내용 검색용 (페이징 처리 포함)
		@RequestMapping(value="nsearchContent.do", method=RequestMethod.POST)
		public ModelAndView noticeSearchContentMethod(
				@RequestParam("action") String action, 
				@RequestParam("keyword") String keyword,
				@RequestParam(name="limit", required=false) String slimit,
				@RequestParam(name="page", required=false) String page,
				ModelAndView mv) {
			
			//검색 결과에 대한 페이징 처리
			//출력할 페이지 지정
			int currentPage = 1;
			//전송온 페이지 값이 있다면 추출
			if(page != null) {
				currentPage = Integer.parseInt(page);
			}
			
			//한 페이지당 출력할 목록 갯수 지정
			int limit = 10;
			//전송 온 limit 값이 있다면 
			if(slimit != null) {
				limit = Integer.parseInt(slimit);
			}
			
			//총 페이지수 계산을 위한 검색 결과 적용된 총 목록 갯수 조회
			int listCount = noticeService.selectSearchContentCount(keyword);
			
			//뷰 페이지에 사용할 페이징 관련 값 계산 처리
			Paging paging = new Paging(listCount, currentPage, limit, "nsearchContent.do");
			paging.calculator();
			
			
			//서비스 메소드 호출하고 리턴결과 받기
			Search search = new Search();
			search.setStartRow(paging.getStartRow());
			search.setEndRow(paging.getEndRow());
			search.setKeyword(keyword);
			
			ArrayList<Notice> list = noticeService.selectSearchContent(search);
			
			//받은 결과에 따라 성공/실패 페이지 내보내기
			if(list != null && list.size() > 0) {
				mv.addObject("list", list);
				mv.addObject("paging", paging);
				mv.addObject("currentPage", currentPage);
				mv.addObject("limit", limit);
				mv.addObject("action", action);
				mv.addObject("keyword", keyword);
				mv.setViewName("notice/noticeListView");
			}else {
				mv.addObject("message", action + "에 대한 " 
								+ keyword + " 검색 결과가 존재하지 않습니다.");
				mv.setViewName("common/error");
			}
			
			return mv;
			
		}
		
		//공지글 등록날짜로 검색용 (페이징 처리 포함)
		@RequestMapping(value="nsearchDate.do", method=RequestMethod.POST)
		public ModelAndView noticeSearchDateMethod(
			SearchDate searchDate,
			@RequestParam("action") String action, 
			@RequestParam(name="limit", required=false) String slimit,
			@RequestParam(name="page", required=false) String page,
			ModelAndView mv) {
		
			//검색 결과에 대한 페이징 처리
			//출력할 페이지 지정
			int currentPage = 1;
			//전송온 페이지 값이 있다면 추출
			if(page != null) {
				currentPage = Integer.parseInt(page);
			}
			
			//한 페이지당 출력할 목록 갯수 지정
			int limit = 10;
			//전송 온 limit 값이 있다면 
			if(slimit != null) {
				limit = Integer.parseInt(slimit);
			}
			
			//총 페이지수 계산을 위한 검색 결과 적용된 총 목록 갯수 조회
			int listCount = noticeService.selectSearchDateCount(searchDate);
			
			//뷰 페이지에 사용할 페이징 관련 값 계산 처리
			Paging paging = new Paging(listCount, currentPage, limit, "nsearchDate.do");
			paging.calculator();
			
			
			//서비스 메소드 호출하고 리턴결과 받기
			Search search = new Search();
			search.setStartRow(paging.getStartRow());
			search.setEndRow(paging.getEndRow());
			search.setBegin(searchDate.getBegin());
			search.setEnd(searchDate.getEnd());
			
			ArrayList<Notice> list = noticeService.selectSearchDate(search);
			
			//받은 결과에 따라 성공/실패 페이지 내보내기
			if(list != null && list.size() > 0) {
				mv.addObject("list", list);
				mv.addObject("paging", paging);
				mv.addObject("currentPage", currentPage);
				mv.addObject("limit", limit);
				mv.addObject("action", action);
				mv.setViewName("notice/noticeListView");
				mv.addObject("begin", searchDate.getBegin());
				mv.addObject("end", searchDate.getEnd());
			}else {
				mv.addObject("message", action + "에 대한 " + searchDate.getBegin() + "부터 "
						+ searchDate.getEnd() + " 기간 사이의 게시글이 존재하지 않습니다.");
				mv.setViewName("common/error");
			}
			
			return mv;
			
		}

		
}

