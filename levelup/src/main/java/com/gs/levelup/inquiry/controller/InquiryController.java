package com.gs.levelup.inquiry.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.common.Paging;
import com.gs.levelup.inquiry.model.service.InquiryService;
import com.gs.levelup.inquiry.model.vo.Inquiry;


@Controller
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	//뷰 페이지 이동 처리용 ---------------------------------------------------
	
	
	//요청 처리용 ----------------------------------------------------------
	
	@RequestMapping(value="ilist.do", method=RequestMethod.GET)
	public String selectListMethod(@RequestParam(name="page", required=false) String page,
										  @RequestParam(name="limit", required=false) String plimit,
										  Model model){
		/*int currentPage = 1;
		if(page != null) {
			currentPage = Integer.parseInt(page);
		}
		
		//한 페이지에 10개씩 출력
		int limit = 10;
		if(plimit != null) {
			limit = Integer.parseInt(plimit);
		}
		
		//총 페이지 수 계산을 위한 게시글 총 개수
		int listCount = inquiryService.selectListCount();
		
		//페이징 계산
		Paging paging = new Paging(listCount, currentPage, limit, "ilist.do");
		paging.calculator();
		
		//페이지에 조회할 목록 조회
		ArrayList<Inquiry> list = inquiryService.selectList(paging);
		
		if(list != null && list.size() > 0 ) {
			model.addAttribute("list", list);
			model.addAttribute("paging", paging);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("limit", limit);*/
			
			return "empInquiry/empInquiryListView";
			
			/*
			 * }else { model.addAttribute("message", "문의 목록 조회 실패"); return "common/error";
			 * }
			 */		
		
	}
	
	@RequestMapping(value="idetail.do", method=RequestMethod.GET)
	public String moveInquiryDetailMethod(Model model){
		return "empInquiry/empInquiryDetailView";
	}
	
	@RequestMapping(value="iinsertans.do", method=RequestMethod.GET)
	public ModelAndView insertInquiryAnswerMethod(ModelAndView mv){
		return mv;
	}	
	
	@RequestMapping(value="iupdate.do", method=RequestMethod.GET)
	public ModelAndView updateInquiryAnswerMethod(ModelAndView mv){
		return mv;
	}
	
	@RequestMapping(value="idelete.do", method=RequestMethod.GET)
	public ModelAndView deleteInquiryAnswerMethod(ModelAndView mv){
		return mv;
	}	
	

	@RequestMapping(value="isearchid.do", method=RequestMethod.GET)
	public ModelAndView selectSearchUserIDMethod(ModelAndView mv){
		return mv;
	}
	
	@RequestMapping(value="isearchtype.do", method=RequestMethod.GET)
	public ModelAndView selectSearchTypeMethod(ModelAndView mv){
		return mv;
	}
	
	@RequestMapping(value="isearchdate.do", method=RequestMethod.GET)
	public ModelAndView selectSearchDateMethod(ModelAndView mv){
		return mv;
	}

}
