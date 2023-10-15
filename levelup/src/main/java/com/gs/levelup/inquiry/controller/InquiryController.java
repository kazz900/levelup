package com.gs.levelup.inquiry.controller;


import java.sql.Date;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.inquiry.model.service.InquiryService;
import com.gs.levelup.inquiry.model.vo.Inquiry;


@Controller
public class InquiryController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private InquiryService inquiryService;
	
	//뷰 페이지 이동 처리용 ---------------------------------------------------
	
	
	//요청 처리용 ----------------------------------------------------------
	
	@RequestMapping(value="ilist.do", method=RequestMethod.GET)
	public String selectListMethod(@RequestParam(name="page", required=false) String page,
										  @RequestParam(name="limit", required=false) String slimit,
										  Model model){
		
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
		logger.info(String.valueOf(listCount));
		
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
			
			return "empInquiry/empInquiryListView";
		}else {
			model.addAttribute("message", currentPage + "페이지 목록 조회 실패!");
			return "common/error";
		}	
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
	
	@RequestMapping(value="isearch.do", method=RequestMethod.GET)
	public String selectSearchMethod(@RequestParam("action") String action,
										@RequestParam(name="begin", required=false) String begin,
										@RequestParam(name="end", required=false) String end,
										@RequestParam(name="keyword", required=false) String keyword,
										@RequestParam(name="page", required=false) String page,
										@RequestParam(name="type", required=false) String type,
										Model model,
										RedirectAttributes re){
		
		if (action.equals("writer")){
			re.addAttribute("action", action);
			re.addAttribute("keyword", keyword);
			re.addAttribute("page", page);
			return "redirect:isearchid.do";
		} else if (action.equals("title")) {
			re.addAttribute("action", action);
			re.addAttribute("keyword", keyword);
			re.addAttribute("page", page);
			return "redirect:isearchtitle.do";
		} else if (action.equals("date")) {
			re.addAttribute("action", action);
			re.addAttribute("page", page);
			re.addAttribute("searchDate", new SearchDate(Date.valueOf(begin), Date.valueOf(end)));
			return "redirect:isearchdate.do";
		} else if (action.equals("type")){
			re.addAttribute("action", action);
			re.addAttribute("page", page);
			re.addAttribute("type", type);
			return "redirect:isearchtype.do";
		} else {
			model.addAttribute("message", "검색 실패!");
			return "common/error";
		}
	}

	@RequestMapping(value="isearchid.do", method=RequestMethod.GET)
	public ModelAndView selectSearchUserIDMethod(ModelAndView mv,
			@RequestParam("action") String action,
			@RequestParam(name="keyword", required=false) String keyword,
			@RequestParam(name="page", required=false) String page){
		logger.info("action: " + action + ", keyword: " + keyword + ", page: " + page);
		//검색결과에 대한 페이징 처리
				//출력할 페이지 지정
				int currentPage = 1;
				//전송온 페이지 값이 있다면 추출함
				if(page != null) {
					currentPage = Integer.parseInt(page);
				}
				
				//한 페이지당 출력할 목록 갯수 지정
				int limit = 10;

				
				//총 페이지수 계산을 위한 검색 결과 적용된 총 목록 갯수 조회
				int listCount = inquiryService.selectSearchUserIDCount(keyword.trim());
				
				//뷰 페이지에 사용할 페이징 관련 값 계산 처리
				Paging paging = new Paging(listCount, currentPage, limit, "isearchid.do");
				paging.calculator();
				
				//서비스 메소드 호출하고 리턴결과 받기		
				Search search = new Search();
				search.setStartRow(paging.getStartRow());
				search.setEndRow(paging.getEndRow());
				search.setKeyword(keyword);
				
				ArrayList<Inquiry> list = inquiryService.selectSearchUserID(search);
				
				//받은 결과에 따라 성공/실패 페이지 내보내기
				if(list != null && list.size() > 0) {
					mv.addObject("list", list);
					mv.addObject("paging", paging);
					mv.addObject("currentPage", currentPage);
					mv.addObject("limit", limit);
					mv.addObject("action", action);
					mv.addObject("keyword", keyword);			
					
					mv.setViewName("empInquiry/empInquiryListView");
				}else {
					mv.addObject("message", action + "에 대한 " 
								+ keyword + " 검색 결과가 존재하지 않습니다.");			
					mv.setViewName("common/error");
				}
				return mv;
	}
	
	@RequestMapping(value="isearchtitle.do", method=RequestMethod.GET)
	public ModelAndView selectSearchTitleMethod(ModelAndView mv){
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
