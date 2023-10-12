package com.gs.levelup.character.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.character.model.service.CharacterService;

@Controller
public class CharacterController {
	private static final Logger logger = LoggerFactory.getLogger(CharacterController.class);

	@Autowired
	private CharacterService characterService;
	
	@RequestMapping("selectchars")
	public ModelAndView selectCharacters(int accountId, ModelAndView mv) {
		return mv;
	}
	
	@RequestMapping("selectchar")
	public ModelAndView selectCharacter(int accountId, int charId, ModelAndView mv) {
		return mv;
	}

}