package com.gaebalsebal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gaebalsebal.domain.MemberDTO;
import com.gaebalsebal.persistence.FindIdMapper;
import com.gaebalsebal.service.interfaces.FindIdService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/member/*")
@RequiredArgsConstructor
public class FindIdController {

	private static final Logger logger = LoggerFactory.getLogger(FindIdController.class);
	
	@Autowired
	private FindIdService findIdService;
	
	@GetMapping("/findId")
	public String FindIdForm() {
		return "member/findId";
	}
	
	
	@PostMapping("/findId")
	public String findId(MemberDTO member, Model model) {
	    logger.info("findID PAGE");
	    String id = findIdService.findID(member);
	    if(id != null) {
	        logger.info("id success");
	        model.addAttribute("id", id);
	    } else {
	        logger.info("id failed");
	        model.addAttribute("error", true);
	    }
	    return "member/findId";
	}
	}
	
	
	

