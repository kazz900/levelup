package com.gs.levelup.picklog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.picklog.model.service.PickLogService;

@Controller
public class PickLogController {
	@Autowired
	private PickLogService pickLogService;
	
	@RequestMapping("selectpicklog")
	public ModelAndView selectPickLog(int accountId, int charId, ModelAndView mv) {
		return mv;
	}
}
