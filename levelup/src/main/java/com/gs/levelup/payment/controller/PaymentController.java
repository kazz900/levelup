package com.gs.levelup.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gs.levelup.common.Search;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.payment.model.service.PaymentService;
import com.gs.levelup.payment.model.vo.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	@RequestMapping(value="plist.do", method=RequestMethod.GET)
	public String paymentListMethod(@RequestParam(name="page", required=false) String page,
									@RequestParam(name="limit", required=false) String limit,
									Model model) {
		return "";
	}	
	
	@RequestMapping(value="payinsert.do", method=RequestMethod.POST)
	public int insertPaymentMethod(Payment payment, Model model, HttpServletRequest request) {
		return 1;
	}
	
	
	@RequestMapping(value="payupdate.do", method=RequestMethod.POST)
	public int updatePaymentMethod(Payment payment, Model model, HttpServletRequest request) {
		return 1;
	}
		
	
	@RequestMapping(value="paydelete.do", method=RequestMethod.POST)
	public int deletePaymentMethod(@RequestParam("paymentno") String paymentId, Model model, HttpServletRequest request) {
		return 1;
	}
	
	
	@RequestMapping(value="psearchid.do", method=RequestMethod.POST)
	public ModelAndView selectSearchUserID (@RequestParam("action") String action, 
											@RequestParam("keyword") String keyword,
											@RequestParam(name="limit", required=false) String slimit,
											@RequestParam(name="page", required=false) String page,
											ModelAndView mv) {
		return mv;
	}
	
	@RequestMapping(value="psearchitem.do", method=RequestMethod.POST)
	public ModelAndView selectSearchItem (@RequestParam("action") String action, 
											@RequestParam("keyword") String keyword,
											@RequestParam(name="limit", required=false) String slimit,
											@RequestParam(name="page", required=false) String page,
											ModelAndView mv) {
		return mv;
	}
	
	@RequestMapping(value="psearchdate.do", method=RequestMethod.POST)
	public ModelAndView selectSearchDate (@RequestParam("action") String action, 
											@RequestParam("keyword") String keyword,
											@RequestParam(name="limit", required=false) String slimit,
											@RequestParam(name="page", required=false) String page,
											ModelAndView mv) {
		return mv;
	}


}
