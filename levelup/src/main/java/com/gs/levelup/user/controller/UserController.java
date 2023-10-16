package com.gs.levelup.user.controller;

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
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.common.Paging;
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

	@RequestMapping("ulogin.do")
	public String moveUserLogin() {
		return "user/ulogin";
	}

	//페이지 이동처리
	@RequestMapping("umain.do")
	public String userMainPageMethod() {
		return "user/umain";
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
		Paging paging = new Paging(listCount, currentPage, limit, "ilist.do");
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

	// 관리자용 : 회원검색 처리용 메소드
	@RequestMapping(value = "usearch.do", method = RequestMethod.POST)
	public ModelAndView userSearchMethod(HttpServletRequest request, ModelAndView mv) {
		return mv;
	}

}
