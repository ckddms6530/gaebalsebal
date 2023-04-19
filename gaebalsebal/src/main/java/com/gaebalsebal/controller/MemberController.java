package com.gaebalsebal.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.gaebalsebal.domain.MemberDTO;
import com.gaebalsebal.service.interfaces.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/member/*")
@RequiredArgsConstructor
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("")
	public String join() {
		return "/member/login";
	}
	
	@PostMapping("/join")
	public String login(MemberDTO member) {
		logger.info("JOIN PAGE");
		memberService.memberJoin(member);

		return "/member/login";
	}
	

	@RequestMapping(value="/member/idCheck", method=RequestMethod.POST)
	@ResponseBody
	public int idCheck(@RequestBody MemberDTO member) {
		int result = memberService.idCheck(member);
		return result;
	}
	
}
	
	
