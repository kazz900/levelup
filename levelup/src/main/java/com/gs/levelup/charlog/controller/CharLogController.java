package com.gs.levelup.charlog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.charlog.model.service.CharLogService;

@Controller
public class CharLogController {
	@Autowired
	private CharLogService charLogService;
	
	@RequestMapping("selectcharlog")
	public ModelAndView selectCharLog(int charId, ModelAndView mv) {
		return mv;
	}
}
