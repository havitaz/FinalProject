package com.kh.finalProject.mail;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.kh.finalProject.member.model.service.MemberService;
import com.kh.finalProject.member.model.vo.Member;

@Controller
public class PasswordMail {

	@Autowired
	private JavaMailSender sender;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/sendmail.pwd")
	public String mail(Member m, Model model) throws MessagingException {
		
		Member loginUser = memberService.emailCheck(m);
		System.out.println(loginUser);
//		메시지 생성
		
		if(loginUser == null) {
			model.addAttribute("errorMsg", "에러에러에러에러");
			return "common/errorPage";
			
		} else {
//			SimpleMailMessage message = new SimpleMailMessage();
//			
//			message.setSubject(loginUser.getMemberName()+"님 안녕하세요 품앗이입니다.");
//			message.setText("귀하의 비밀번호는 " + loginUser.getMemberPwd() + "입니다.");
//			
//			
//			String[] to = {"dame9735@naver.com"};
//			message.setTo(to);
//			
//			sender.send(message);
//			
//			
//			
//			model.addAttribute("successMsg", "귀하의 메일로 비밀번호를 보냈습니다.");
//			return "common/successPage";
			
			
		
			MimeMessage message = sender.createMimeMessage();
			
			MimeMessageHelper helper = new MimeMessageHelper(message, false, "UTF-8");
			
			String[] to = {"dame9735@naver.com"};
			helper.setTo(to);
			helper.setSubject(loginUser.getMemberName()+"님 안녕하세요 품앗이입니다.");
			
			String url = ServletUriComponentsBuilder
						 .fromCurrentContextPath()
						 .port(5555).path("/pwdChangePage.me")
						 .toUriString();
			
			helper.setText("<a href = '" + url + "'>비밀번호 재설정 페이지로 이동 </a>", true);
			
			sender.send(message);
			
			return "redirect:/";
			
		}
		
	}
	
}
