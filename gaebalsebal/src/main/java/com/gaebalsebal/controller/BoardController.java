package com.gaebalsebal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gaebalsebal.domain.Criteria;
import com.gaebalsebal.domain.PageDTO;
import com.gaebalsebal.service.interfaces.BoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
@Log4j2
@Controller
@RequestMapping("/board/*")
@RequiredArgsConstructor
public class BoardController {
	
	private final BoardService service;
	
	@GetMapping("list")
	public String boardList(Criteria cri, Model model) {
		
		log.info("list : " + cri);
		
		if("H".equals(cri.getType())) {
		cri.setKeywords(cri.getKeyword().split("#"));
		
		}
		model.addAttribute("list",  service.getList(cri));
		log.info(model.getAttribute("list"));
		
		
		int total = service.getTotal(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		return "board/freeBoard";
	}
}
