package com.gs.levelup.caseitemchange.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.gs.levelup.caseitemchange.model.service.CaseItemChangeService;

@Controller
public class CaseItemChangeController {
	private static final Logger logger = LoggerFactory.getLogger(CaseItemChangeController.class);
	
	@Autowired
	private CaseItemChangeService cicService;
	
	@RequestMapping(value="changeItem.do", method = RequestMethod.GET)
	public ModelAndView changeItemMethod(ModelAndView mv) {
		return mv;
	}
	
	@RequestMapping(value="cicinsert.do", method = RequestMethod.GET)
	public ModelAndView insertCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicselect.do", method = RequestMethod.GET)
	public ModelAndView selectCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicupdate.do", method = RequestMethod.GET)
	public ModelAndView updateCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicdel.do", method = RequestMethod.GET)
	public ModelAndView deleteCaseItemChange(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="ciclist.do", method = RequestMethod.GET)
	public ModelAndView selectList(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicsearchemp.do", method = RequestMethod.GET)
	public ModelAndView selectSearchEmployeeId(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicsearchwriter.do", method = RequestMethod.GET)
	public ModelAndView selectSearchWriter(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicsearchtitle.do", method = RequestMethod.GET)
	public ModelAndView selectSearchTitle(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cicsearchdate.do", method = RequestMethod.GET)
	public ModelAndView selectSearchDate(ModelAndView mv) {
		return mv;
	}
}
