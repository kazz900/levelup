package com.gs.levelup.caseitemdelete.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.gs.levelup.caseitemdelete.model.service.CaseItemDeleteService;

@Controller
public class CaseItemDeleteController {
	private static final Logger logger = LoggerFactory.getLogger(CaseItemDeleteController.class);
	
	@Autowired
	private CaseItemDeleteService cidService;
	
	@RequestMapping(value="cidinsert.do", method = RequestMethod.POST)
	public ModelAndView insertCaseItemDelete(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cidselect.do", method = RequestMethod.POST)
	public ModelAndView selectCaseItemDelete(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cidupdate.do", method = RequestMethod.POST)
	public ModelAndView updateCaseItemDelete(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="ciddel.do", method = RequestMethod.POST)
	public ModelAndView deleteCaseItemDelete(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cidlist.do", method = RequestMethod.POST)
	public ModelAndView selectList(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cidsearchemp.do", method = RequestMethod.POST)
	public ModelAndView selectSearchEmployeeId(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cidsearchwriter.do", method = RequestMethod.POST)
	public ModelAndView selectSearchWriter(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cidsearchtitle.do", method = RequestMethod.POST)
	public ModelAndView selectSearchTitle(ModelAndView mv) {
		return mv;
	}

	@RequestMapping(value="cidsearchdate.do", method = RequestMethod.POST)
	public ModelAndView selectSearchDate(ModelAndView mv) {
		return mv;
	}
}
