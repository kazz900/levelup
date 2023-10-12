package com.gs.levelup.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.common.SearchDatePaging;
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


	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginMethod(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "";
	}

	@RequestMapping("logout.do")
	public String logoutMethod(HttpServletRequest request, Model model) {
		return "";
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
		Paging paging = new Paging(listCount, currentPage, limit, "mlist.do");
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
