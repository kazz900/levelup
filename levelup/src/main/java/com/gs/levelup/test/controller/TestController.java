package com.gs.levelup.test.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gs.levelup.email_check.model.service.EmailCheckService;
import com.gs.levelup.email_check.model.vo.EmailCheck;
import com.gs.levelup.schedule.controller.ScheduleController;
import com.gs.levelup.user.model.service.UserService;

@Controller
public class TestController {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private EmailCheckService emailCheckService;
	
	@Autowired
	private UserService userService;
	
	/*
	 * @RequestMapping(value = "sendMail.do", method = RequestMethod.GET) public
	 * void getMailSend() { logger.info("메일발송 JSP진입"); }
	 */
	
	@RequestMapping(value = "sendMail.do", method = RequestMethod.POST)
    public String sendMailTest(
    		HttpServletRequest request,
    		@RequestParam(value="email", required=false) String toEmail) throws Exception{
		System.out.println("sendMail.do=================" + toEmail);
		
		
		
		if(userService.selectUserEmail(toEmail) != null && userService.selectUserEmail(toEmail).length() > 5) {
			Random random = new Random();
	        int ranNum = random.nextInt(900000) + 100000;
	        
			logger.info("sendMail.do : " + ranNum);
			
			// 메일 내용
			String subject = "The Mana World - 비밀번호 재설정 코드";
			String content = "\n발송된 코드 : " + ranNum;
			
			EmailCheck emailCheck = new EmailCheck(toEmail, ranNum);
			
			emailCheckService.insertEmailCheck(emailCheck);

			// 보내는 사람 김지혁
			String frm = "kimjihyuk_@naver.com";
			
			// 보내는 사람 김화범
			//String frm = "vulpes900@naver.com";
		
			try {
				// 메일 내용 넣을 객체와, 이를 도와주는 Helper 객체 생성
				MimeMessage mail = mailSender.createMimeMessage();
				MimeMessageHelper mailHelper = new MimeMessageHelper(mail, "UTF-8");

				// 메일 내용을 채워줌
				mailHelper.setFrom(frm);	// 보내는 사람 셋팅
				mailHelper.setTo(toEmail);		// 받는 사람 셋팅
				mailHelper.setSubject(subject);	// 제목 셋팅
				mailHelper.setText(content);	// 내용 셋팅

				// 메일 전송
				mailSender.send(mail);
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return "redirect:searchPwd.do?success=" + toEmail + "&message=sendsuccess";
		}else {
			return "redirect:searchPwd.do?success=" + toEmail + "&message=error2";
		}
		
		
        
    }
	
	@RequestMapping(value = "checkCode.do", method = RequestMethod.POST)
	public String checkCodeMethod(
			Model model,
			@RequestParam(name="code") int code,
			@RequestParam(name="email") String email) {
		System.out.println("checkCode.do=================");
		EmailCheck emailCheck = new EmailCheck(email, code);
		
		int result = emailCheckService.selectCheckCode(emailCheck);
		
		if(result == code) {
			model.addAttribute("email", email);
			return "user/rePwd";
		}else {
			return "redirect:searchPwd.do?success=" + email + "&message=error";
		}
	}
}
