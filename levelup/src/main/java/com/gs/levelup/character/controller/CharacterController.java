package com.gs.levelup.character.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.character.model.service.CharacterService;

@Controller
public class CharacterController {
	private static final Logger logger = LoggerFactory.getLogger(CharacterController.class);

	@Autowired
	private CharacterService characterService;
	
	@RequestMapping("selectchars.do")
	public ModelAndView selectCharacters(int accountId, ModelAndView mv) {
		return mv;
	}
	
	@RequestMapping("listChar.do")
	public String testMaria(Model model) {
		ArrayList<Character> list = characterService.selectAll();
		
		if (list != null && list.size() > 0) {
			model.addAttribute("list", list);

			return "character/testChar";
		} else {
			model.addAttribute("message", "mariaDB 테스트 실패");
			return "common/error";
		} 
	}
	
	@RequestMapping("selectchar")
	public ModelAndView selectCharacter(int accountId, int charId, ModelAndView mv) {
		return mv;
	}

}
