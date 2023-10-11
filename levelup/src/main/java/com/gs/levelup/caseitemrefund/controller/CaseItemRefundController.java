package com.gs.levelup.caseitemrefund.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.caseitemrefund.model.service.CaseItemRefundService;

@Controller
public class CaseItemRefundController {
	private static final Logger logger = LoggerFactory.getLogger(CaseItemRefundController.class);

	@Autowired
	private CaseItemRefundService cirService;
	
	@RequestMapping(value = "refunditem.do", method = RequestMethod.GET)
	public ModelAndView refundItemMethod(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value = "cirinsert.do", method = RequestMethod.GET)
	public ModelAndView insertCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value = "cirselect.do", method = RequestMethod.GET)
	public ModelAndView selectCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value = "cirupdate.do", method = RequestMethod.GET)
	public ModelAndView updateCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value = "cirdel.do", method = RequestMethod.GET)
	public ModelAndView deleteCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value = "cirlist.do", method = RequestMethod.GET)
	public ModelAndView selectList(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value = "cirsearchemp.do", method = RequestMethod.GET)
	public ModelAndView selectSearchEmployeeId(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value = "cirsearchwriter.do", method = RequestMethod.GET)
	public ModelAndView selectSearchWriter(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value = "cirsearchtitle.do", method = RequestMethod.GET)
	public ModelAndView selectSearchTitle(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value = "cirsearchdate.do", method = RequestMethod.GET)
	public ModelAndView selectSearchDate(ModelAndView mv) {
		return mv;
	}
}
