package com.gs.levelup.rodexMail.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.item.model.vo.Item;
import com.gs.levelup.rodexMail.model.service.RodexMailService;

@Controller
public class RodexMailController {
	private static final Logger logger = LoggerFactory.getLogger(RodexMailController.class);

	@Autowired
	private RodexMailService rodexMailService;
	
	@RequestMapping("mailList.do")
	public ModelAndView selectListRodexMail(
			@RequestParam(name="page", required=false) String page ,
			@RequestParam("accountId") int accountId,
			@RequestParam("charId") int charId,
			ModelAndView mv) {
		return mv;
	}

	@RequestMapping("maildelete.do")
	public String deleteRodexMail(
			@RequestParam("mailId") int noticeno,
			Model model
			) {
		return null;
	}
	
	@RequestMapping(value="mailinsert.do", method=RequestMethod.POST)
	public String insertRodexMail(Item item, Model model ) {
		return null;
	}

	// 공지글 상세보기 요청 처리용
	@RequestMapping("maildetail.do")
	public ModelAndView selectDetailRodexMail(
			@RequestParam("mailId") int mailId , ModelAndView mv) {
		return mv;
	}

}
