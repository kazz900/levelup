package com.gs.levelup.inventory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.inventory.model.service.InventoryService;

@Controller
public class InventoryController {
	@Autowired
	private InventoryService inventoryService;
	
	@RequestMapping("selectinventory")
	public ModelAndView selectInventory(int accountId, int charId, ModelAndView mv) {
		return mv;
	}
}
