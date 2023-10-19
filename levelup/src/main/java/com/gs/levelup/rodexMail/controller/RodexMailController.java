package com.gs.levelup.rodexMail.controller;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

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

import com.gs.levelup.rodexMail.model.service.RodexMailService;

@Controller
public class RodexMailController {
	private static final Logger logger = LoggerFactory.getLogger(RodexMailController.class);

	@Autowired
	private RodexMailService rodexMailService;

	@RequestMapping("mailList.do")
	public ModelAndView selectListRodexMail(@RequestParam(name = "page", required = false) String page,
			@RequestParam("accountId") int accountId, @RequestParam("charId") int charId, ModelAndView mv) {
		return mv;
	}

	@RequestMapping("maildelete.do")
	public String deleteRodexMail(@RequestParam("mailId") int noticeno, Model model) {
		return null;
	}

	@RequestMapping(value = "purchase.do", method = RequestMethod.POST)
	public String insertRodexMail(
			HttpServletRequest request, 
			@RequestParam(value="charName") String receiverName,
			@RequestParam(value="charId") int receiverId, 
			@RequestParam(value="itemId") int nameId, 
			Model model) {
		logger.info("testlogger : " + receiverName);
		long sendDate = Instant.now().toEpochMilli() / 1000;
//		BigDecimal uniqueId = BigDecimal.valueOf(Instant.now().toEpochMilli() * 100 + (new Random().nextInt(10) + 1) * 10
//				+ (new Random().nextInt(10)));
		long uniqueId = Instant.now().toEpochMilli() * 100 + (new Random().nextInt(10) + 1) * 10
				+ (new Random().nextInt(10));

		logger.info("purchase.do : " + receiverName + ", " + receiverId + ", " + nameId + ", " + sendDate + ", " + uniqueId);

		Map<String, Object> purchase = new HashMap<String, Object>();
		purchase.put("receiverName", receiverName);
		purchase.put("receiverId", receiverId);
		purchase.put("nameId", nameId);
		purchase.put("sendDate", sendDate);
		purchase.put("uniqueId", uniqueId);
		
		if (rodexMailService.insertRodexMail(purchase) > 0) {
			model.addAttribute("message", "구매성공했습니다.");
			return "user/ushop";
		} else {
			model.addAttribute("message", "구매 실패, 고객센터 문의요망");
			model.addAttribute("map", purchase);
			return "purchase/purchaseError";
		}
	}

	// 메일 상세보기 요청 처리용
	@RequestMapping("maildetail.do")
	public ModelAndView selectDetailRodexMail(@RequestParam("mailId") int mailId, ModelAndView mv) {
		return mv;
	}

}
