package com.gs.levelup.user.controller;

import java.io.File;
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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gs.levelup.character.model.service.CharacterService;
import com.gs.levelup.common.FileNameChange;
import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.inquiry.model.service.InquiryService;
import com.gs.levelup.inquiry.model.vo.Inquiry;
import com.gs.levelup.user.model.service.UserService;
import com.gs.levelup.user.model.vo.User;

@Controller // 설정 xml 에 해당 클래스를 Controller 로 자동 등록해 줌
public class UserController {
	// 이 컨트롤러 안의 메소드들이 구동되는지,
	// 값이 잘 전달되었는지 확인을 위한 로그 객체를 생성
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	// Service 연결처리 : 자동 DI 처리
	@Autowired
	private UserService userService;
	
	@Autowired
	private InquiryService inquiryService;
	
	@Autowired
	private CharacterService characterService;

	@RequestMapping("ulogin.do")
	public String moveUserLogin() {
		return "user/ulogin";
	}

	//페이지 이동처리
	@RequestMapping("umain.do")
	public String userMainPageMethod() {
		return "user/umain";
	}
	
	@RequestMapping("uitem.do")
	public String userItemPageMethod() {
		return "user/useritemlist";
	}
	
	@RequestMapping("uabout.do")
	public String userAboutPageMethod() {
		return "user/useraboutus";
	}
	
	@RequestMapping("inquiryu.do")
	public String userInsertInquiryMethod() {
		return "user/writeinquiry";
	}
	
	@RequestMapping("helptype5.do")
	public String helptype5Method() {
		return "user/usercall";
	}
	
	
	@RequestMapping(value="uhelp.do", method=RequestMethod.GET)
	public String userhelpPageMethod(@RequestParam(name="page", required=false) String page,
			@RequestParam(name="limit", required=false) String slimit, Model model){
		
		int currentPage = 1;
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}
		
		//한 페이지 게시글 10개씩 출력되게 한다면
		int limit = 10;
		if (slimit != null) {
			limit = Integer.parseInt(slimit);
		}
		
		//총 페이지 수 계산을 위한 게시글 총갯수 조회
		int listCount = inquiryService.selectListCount();

		//페이지 관련 항목 계산 처리
		Paging paging = new Paging(listCount, currentPage, limit, "uhelp.do");
		paging.calculator();
		
		//페이지에 출력할 목록 조회해 옴
		ArrayList<Inquiry> list = inquiryService.selectList(paging);
		
		if(list != null && list.size() > 0) {
			model.addAttribute("list", list);
			model.addAttribute("paging", paging);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("limit", limit);
			
			return "user/userHelpList";
		}else {
			model.addAttribute("message", currentPage + "페이지 목록 조회 실패!");
			return "common/error";
		}	
	}
	
	@RequestMapping(value= "gouloginpage.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String gouloginpageMethod() {
		return "user/ulogin";
	}
	
	@RequestMapping("ushop.do")
	public String goUShopMethod() {
		return "user/ushop";
	}

	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String selectLogin(User user, HttpSession session, SessionStatus status, Model model) {
		logger.info("login.do : " + user);
		User loginUser = userService.selectLogin(user);
		if(loginUser != null ) {
			session.setAttribute("loginUser", loginUser);
			status.setComplete(); //로그인 요청 성공, 200 전송
			return "user/umain";
		} else {
			// 스프링에서는 request에 저장처리하는 내용을 model 에 저장하는 것으로 변경됨
			// 포워딩하지 못함
			model.addAttribute("message", "로그인 실패");
			return "common/error";
		}
		
	}

	@RequestMapping("logout.do")
	public String logoutMethod(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		if(session != null) {
			session.invalidate();
			return "user/umain";
		}else {
			model.addAttribute("message","로그인 세션이 존재하지 않습니다.");
			return "common/error";
		}
	}

	// My Page 클릭시 내 정보보기 요청 처리용 메소드
	// 컨트롤러의 메소드 리턴타입은 Strign, ModelAndView 를 사용할 수 있다
	@RequestMapping("myinfo.do")
	public String userDetailMethod(@RequestParam("userId") String userId, Model model) {
		return "";
	}
	


	// 반환형이 ModelAndView, 페이징 처리 추가한 메소드
	@RequestMapping("ulist.do")
	public ModelAndView userListViewMethod(@RequestParam(name = "page", required = false) String page,
			ModelAndView mv) {

		int currentPage = 1;
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한 페이지에 목록 10개씩 출력되게 한다면
		int limit = 10;
		// 회원 목록 전체 갯수 조회해 옴
		int listCount = userService.selectListCount();
		Paging paging = new Paging(listCount, currentPage, limit, "ulist.do");
		paging.calculator();
		// 페이징에 필요한 항목들 계산 처리

		ArrayList<User> list = userService.selectList(paging);
		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.setViewName("user/userListView");
		} else {
			mv.addObject("message", "회원 정보가 존재하지 않습니다.");
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	@RequestMapping(value = "inquiry.do", method = RequestMethod.POST)
	public String insertInquiryMethod(Inquiry inquiry, Model model, HttpServletRequest request,
			@RequestParam(name = "upfile", required = false) MultipartFile mfile) {
		logger.info("inquiry.do : " + inquiry);
		
		// 공지사항 첨부파일 저장 폴더 지정
		String savePath = request.getSession().getServletContext().getRealPath("resources/inquiry_upfiles");
		
		// 첨부파일일 있을 때
		if (!mfile.isEmpty()) {
			// 전송온 파일이름 추출함
			String fileName = mfile.getOriginalFilename();
			String renameFileName = null;

			// 저장폴더에는 변경된 이름을 저장 처리함
			// 파일 이름바꾸기함 : 년월일시분초.확장자
			if (fileName != null && fileName.length() > 0) {

				// 바꿀 파일명에 대한 문자열 만들기
				renameFileName = FileNameChange.change(fileName, "yyyyMMddHHmmss") + "#" + mfile.getOriginalFilename();

				logger.info("첨부파일명 확인 : " + fileName + ", " + renameFileName);
				System.out.println("첨부파일명 확인 : " + fileName + ", " + renameFileName);
				try {
					// 저장 폴더에 파일명 바꾸기 처리
					mfile.transferTo(new File(savePath + "\\" + renameFileName));

				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("message", "첨부파일 저장 실패!");
					return "common/error";
				}

			} // 파일명 바꾸기
				// notice 객체에 첨부파일 정보 저장처리
			inquiry.setAttachmentFileName(renameFileName);

		} // 첨부파일이 있을 때
		
		System.out.println("타입 값 : " + inquiry.getInquiryType());
		
		if (inquiryService.insertInquiry(inquiry) > 0) {
			// 공지글 등록 성공시 목록 보기 페이지로 이동
			return "redirect:uhelp.do";
		} else {
			model.addAttribute("message", "새 공지글 등록 실패!");
			return "common/error";
		}

	}
	

	@RequestMapping(value = "helptype1.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView helptype1Method(@RequestParam(name = "limit", required = false) String slimit,
			@RequestParam(name = "page", required = false) String page, 
			ModelAndView mv) {

		// 검색결과에 대한 페이징 처리
		// 출력할 페이지 지정
		int currentPage = 1;
		// 전송온 페이지 값이 있다면 추출함
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한페이지당 출력할 목록 갯수 지정
		int limit = 10;
		// 전송온 limit 값이 있다면
		if (slimit != null) {
			limit = Integer.parseInt(slimit);
		}
		
		String keyword = "1";
		
		// 총 페이지수 계산을 위한 검색결과 적용된 총 목록 갯수 조회
		int listCount = inquiryService.selectListCount(keyword);

		// 뷰 페이지에 사용할 페이징 관련 값 계산 처리
		Paging paging = new Paging(listCount, currentPage, limit, "helptype1.do");
		paging.calculator();

		// service 메소드 호출하고 리턴결과 받기
		Search search = new Search();
		search.setStartRow(paging.getStartRow());
		search.setEndRow(paging.getEndRow());
		search.setKeyword2(1);
		ArrayList<Inquiry> list = inquiryService.selectListType(search);
		
		System.out.println("list1 : " + list);
		// 받은 결과에 따라 성공/실패 페이지 내보내기
		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.addObject("currentPage", currentPage);
			mv.addObject("limit", limit);
			mv.addObject("keyword", keyword);
	
			mv.setViewName("user/userHelpList");
		} else {
			mv.addObject("message", keyword + " 검색 결과가 존재하지 않습니다.");
			mv.setViewName("common/error");
		}

		return mv;
	}
	
	@RequestMapping(value = "helptype2.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView helptype2Method(@RequestParam(name = "limit", required = false) String slimit,
			@RequestParam(name = "page", required = false) String page, 
			ModelAndView mv) {

		// 검색결과에 대한 페이징 처리
		// 출력할 페이지 지정
		int currentPage = 1;
		// 전송온 페이지 값이 있다면 추출함
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한페이지당 출력할 목록 갯수 지정
		int limit = 10;
		// 전송온 limit 값이 있다면
		if (slimit != null) {
			limit = Integer.parseInt(slimit);
		}
		
		String keyword = "2";
		
		// 총 페이지수 계산을 위한 검색결과 적용된 총 목록 갯수 조회
		int listCount = inquiryService.selectListCount(keyword);

		// 뷰 페이지에 사용할 페이징 관련 값 계산 처리
		int keyword2 = Integer.parseInt(keyword);
		Paging paging = new Paging(listCount, currentPage, limit, "helptype2.do");
		paging.calculator();
		
		// service 메소드 호출하고 리턴결과 받기
		Search search = new Search();
		search.setStartRow(paging.getStartRow());
		search.setEndRow(paging.getEndRow());
		search.setKeyword2(2);

		ArrayList<Inquiry> list = inquiryService.selectListType(search);

		// 받은 결과에 따라 성공/실패 페이지 내보내기
		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.addObject("currentPage", currentPage);
			mv.addObject("limit", limit);
			mv.addObject("keyword", keyword);
	
			mv.setViewName("user/userHelpList");
		} else {
			mv.addObject("message", keyword + " 검색 결과가 존재하지 않습니다.");
			mv.setViewName("common/error");
		}

		return mv;
	}

	@RequestMapping(value = "helptype3.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView helptype3Method(@RequestParam(name = "limit", required = false) String slimit,
			@RequestParam(name = "page", required = false) String page, 
			ModelAndView mv) {

		// 검색결과에 대한 페이징 처리
		// 출력할 페이지 지정
		int currentPage = 1;
		// 전송온 페이지 값이 있다면 추출함
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}

		// 한페이지당 출력할 목록 갯수 지정
		int limit = 10;
		// 전송온 limit 값이 있다면
		if (slimit != null) {
			limit = Integer.parseInt(slimit);
		}
		
		String keyword = "3";
		
		// 총 페이지수 계산을 위한 검색결과 적용된 총 목록 갯수 조회
		int listCount = inquiryService.selectListCount(keyword);

		// 뷰 페이지에 사용할 페이징 관련 값 계산 처리
		Paging paging = new Paging(listCount, currentPage, limit, "helptype3.do");
		paging.calculator();
		
		// service 메소드 호출하고 리턴결과 받기
		Search search = new Search();
		search.setStartRow(paging.getStartRow());
		search.setEndRow(paging.getEndRow());
		search.setKeyword2(3);

		ArrayList<Inquiry> list = inquiryService.selectListType(search);

		// 받은 결과에 따라 성공/실패 페이지 내보내기
		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("paging", paging);
			mv.addObject("currentPage", currentPage);
			mv.addObject("limit", limit);
			mv.addObject("keyword", keyword);
	
			mv.setViewName("user/userHelpList");
		} else {
			mv.addObject("message", keyword + " 검색 결과가 존재하지 않습니다.");
			mv.setViewName("common/error");
		}

		return mv;
	}

	// ---------------------------------------------------------------

	// 관리자용 : 회원검색 페이지 이동 처리용
	@RequestMapping(value = "moveusearch.do", method = RequestMethod.GET)
	public String userSearchMethod(@RequestParam(name="user", required=false) User user,
								@RequestParam(name="list", required=false) ArrayList<Character> list, 
								Model model) {
		
		// 검색결과가 존재할 경우
		if (user != null) {
			model.addAttribute("user", user);
			// 검색한 유저에게 캐릭터가 존재할 경우
			if (list.size() > 0 ) {
				model.addAttribute("list", list);
			}
		}
		
		return "empuser/userSearchView";
	}
	

	// 관리자용 : 회원검색 처리용 메소드
	@RequestMapping(value = "usearch.do", method = RequestMethod.POST)
	public String selectSearchMethod(@RequestParam("action") String action,
			@RequestParam("keyword") String keyword,
			Model model, RedirectAttributes re) {

		if (action.equals("accound_id")) {
			re.addAttribute("keyword", keyword);
			return "redirect:usearchaccountid.do";
		} else if (action.equals("userid")) {
			re.addAttribute("keyword", keyword);
			return "redirect:usearchuserid.do";
		} else if (action.equals("email")) {
			re.addAttribute("keyword", keyword);
			return "redirect:usearchemail.do";
		} else {
			model.addAttribute("message1", "검색 실패!");
			return "empuser/userSearchView";
		}
	}
	
	@RequestMapping(value = "usearchaccountid.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView selectSearchAccountIdMethod(@RequestParam("keyword") String keyword, ModelAndView mv) {
		// MyBatis sql query에 필요한 Search Object 생성 및 Keyword 설정
		Search search = new Search();
		search.setKeyword(keyword.trim());
		
		// 서비스 메소드 호출하고 리턴결과 받기
		User user = userService.selectOneSearchAccountId(search);

		// 받은 결과에 따라 성공/실패 페이지 내보내기
		if (user != null) {
			mv.addObject("user", user);

			// 유저가 검색 되었을 때만 캐릭터를 검색함
			ArrayList<Character> list = characterService.selectCharacters(user.getAccountId());
			
			// 검색된 유저가 캐릭터를 가지고 있을경우
			if (list != null && list.size() > 0) {
				mv.addObject("list", list);				
			} else {
				// 검색된 유저가 캐릭터를 가지고 있지 않을 경우
				mv.addObject("message2", "해당 유저는 캐릭터가 없습니다");
			}
		}else {
			mv.addObject("message1", keyword + "로 검색된 유저가 없습니다");
		}
		
		mv.setViewName("empuser/userSearchView");
		return mv;
	}
	
	@RequestMapping(value = "usearchuserid.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView selectSearchUserIdMethod(@RequestParam("keyword") String keyword, ModelAndView mv) {
		// MyBatis sql query에 필요한 Search Object 생성 및 Keyword 설정
		Search search = new Search();
		search.setKeyword(keyword.trim());
		
		// 서비스 메소드 호출하고 리턴결과 받기
		User user = userService.selectOneSearchUserId(search);

		// 받은 결과에 따라 성공/실패 페이지 내보내기
		if (user != null) {
			mv.addObject("user", user);

			// 유저가 검색 되었을 때만 캐릭터를 검색함
			ArrayList<Character> list = characterService.selectCharacters(user.getAccountId());
			
			// 검색된 유저가 캐릭터를 가지고 있을경우
			if (list != null && list.size() > 0) {
				mv.addObject("list", list);				
			} else {
				// 검색된 유저가 캐릭터를 가지고 있지 않을 경우
				mv.addObject("message2", "해당 유저는 캐릭터가 없습니다");
			}
		}else {
			mv.addObject("message1", keyword + "로 검색된 유저가 없습니다");
		}
		
		mv.setViewName("empuser/userSearchView");
		return mv;
	}
	

	@RequestMapping(value="uidetail.do", method=RequestMethod.GET)
	public ModelAndView moveInquiryDetailMethod(
									@RequestParam("iid") String inquiryId,
									@RequestParam("page") String page,
									ModelAndView mv){
		//출력할 페이지 
		int currentPage = 1;
		
		//전송할 페이지가 있다면 추출
		if(page != null) {
			currentPage = Integer.parseInt(page);
		}
	
		Inquiry inquiry = inquiryService.selectInquiry(inquiryId);
		
		if(inquiry != null) {
			mv.addObject("inquiry", inquiry);
			mv.addObject("currentPage", currentPage);
			
			mv.setViewName("user/userInquiryDetailView");
			
		}else {
			mv.addObject("message", "문의글 상세보기 실패");
			mv.setViewName("common/error");
		}

		return mv;
	}

	@RequestMapping(value = "usearchemail.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView selectSearchEmailMethod(@RequestParam("keyword") String keyword, ModelAndView mv) {
		// MyBatis sql query에 필요한 Search Object 생성 및 Keyword 설정
		Search search = new Search();
		search.setKeyword(keyword.trim());
		
		// 서비스 메소드 호출하고 리턴결과 받기
		User user = userService.selectOneSearchEmail(search);


		// 받은 결과에 따라 성공/실패 페이지 내보내기
		if (user != null) {
			mv.addObject("user", user);

			// 유저가 검색 되었을 때만 캐릭터를 검색함
			ArrayList<Character> list = characterService.selectCharacters(user.getAccountId());
			
			// 검색된 유저가 캐릭터를 가지고 있을경우
			if (list != null && list.size() > 0) {
				mv.addObject("list", list);				
			} else {
				// 검색된 유저가 캐릭터를 가지고 있지 않을 경우
				mv.addObject("message2", "해당 유저는 캐릭터가 없습니다");
			}
		}else {
			mv.addObject("message1", keyword + "로 검색된 유저가 없습니다");
		}
		
		mv.setViewName("empuser/userSearchView");
		return mv;
	}
}
