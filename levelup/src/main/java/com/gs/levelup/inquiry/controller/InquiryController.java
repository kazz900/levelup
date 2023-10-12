package com.gs.levelup.inquiry.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.gs.levelup.inquiry.model.service.InquiryService;


@Controller
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	@RequestMapping(value="ilist.do", method=RequestMethod.GET)
	public ModelAndView selectListMethod(ModelAndView mv){
		return mv;
	}
	
	@RequestMapping(value="idetail.do", method=RequestMethod.GET)
	public ModelAndView moveInquiryDetailMethod(ModelAndView mv){
		return mv;
	}
	
	@RequestMapping(value="iinsert.do", method=RequestMethod.GET)
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
