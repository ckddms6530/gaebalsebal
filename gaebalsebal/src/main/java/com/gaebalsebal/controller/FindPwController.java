package com.gaebalsebal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gaebalsebal.domain.MemberDTO;
import com.gaebalsebal.service.interfaces.FindPwService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/member/*")
@RequiredArgsConstructor
public class FindPwController {

	private static final Logger logger = LoggerFactory.getLogger(FindPwController.class);

	@Autowired
	private FindPwService findPwService;
	
	@GetMapping("/findPw")
	public String FindPwForm() {
		return "member/findPw";
	}
	
	@PostMapping("/findPw")
	public String findPw(MemberDTO member, Model model) {
		logger.info("findPW PAGE");
		String pw = findPwService.findPW(member);
		if(pw != null) {
			logger.info("pw success");
		        model.addAttribute("pw", pw);
		}else {
			logger.info("pw failed");
			model.addAttribute("error", true);
		}
		return "member/findPw";
	
	
	}
	
	

}
