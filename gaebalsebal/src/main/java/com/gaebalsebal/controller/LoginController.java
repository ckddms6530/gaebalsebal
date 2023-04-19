package com.gaebalsebal.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gaebalsebal.domain.MemberDTO;
import com.gaebalsebal.persistence.LoginMapper;
import com.gaebalsebal.service.interfaces.LoginService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;


@Log4j2
@Controller
@RequestMapping("/member/*")
@RequiredArgsConstructor
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);	
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private LoginMapper loginMapper;
	
	@PostMapping("/login")
	public String login(MemberDTO member, HttpServletRequest request) {
		
		logger.info("login PAGE");
		logger.info(member.getMember_id());
		logger.info(member.getMember_pw());
		int result = loginService.memberLogin(member);
		logger.info(String.valueOf(result));
		if(result == 1) {
			logger.info("login success");
			request.getSession().setAttribute("member_id", member.getMember_id());
			return "/board/boardList";
		}else {
			logger.info("login failed");
			return "/member/login";
		}
	}
	
	@GetMapping("login")
	public String login ()  {
		return "/member/login";
				
	}
}
