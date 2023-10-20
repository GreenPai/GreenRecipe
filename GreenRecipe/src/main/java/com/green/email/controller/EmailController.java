
package com.green.email.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.email.service.MailService;


@Controller
public class EmailController {
	
	@Autowired
	private MailService mailService;
	
	@Autowired
	JavaMailSenderImpl mailSender ;

	@RequestMapping("/sendMail")
	@ResponseBody
	public String sendEmail(String id, String email) throws Exception {
		
		String addr    = "childhong@naver.com";
		
		String subject = "그린 레시피의 새로운 의견입니다";
		
		String body    = "새로운 의견이 도착했습니다";		
		
		mailService.sendEmail(email, addr, subject, body);
		
		String msg  = "메일 전송완료";
		return msg;
	}


	     
}
