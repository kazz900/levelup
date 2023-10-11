package com.gs.levelup.loginlog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.loginlog.model.service.LoginLogService;

@Controller
public class LoginLogController {
	@Autowired
	private LoginLogService loginLogService;

	@RequestMapping("selectloginlog")
	public ModelAndView selectLoginLog(int accountId, ModelAndView mv) {
		return mv;
	}
}
