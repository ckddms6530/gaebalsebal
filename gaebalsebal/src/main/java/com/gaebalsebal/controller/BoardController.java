package com.gaebalsebal.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.Criteria;
import com.gaebalsebal.domain.FileVO;
import com.gaebalsebal.domain.PageDTO;
import com.gaebalsebal.domain.TagVO;
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
	
	
	@GetMapping("board-list")
	public String boardList(BoardVO vo, Model model) {
		if(vo.getCategory_type() == null) {
			vo.setBoard_category (1);
		}
		model.addAttribute("category", vo.getBoard_category());
		model.addAttribute("boardList", service.boardListRead(vo));
		
		return "board/bos";
	}
	
	@GetMapping("board-read")
	public String boardRead(BoardVO vo, Model model) {
		vo.setMember_no(1); // d임시 유저벊ㅗ;
		model.addAttribute("board", service.boardRead(vo));
		
		return "board/boardRead";
	}
	
	@GetMapping("board-register")
	public String boardRegister(BoardVO vo, Model model) {
		model.addAttribute("boardRegister", service.boardRead(vo));
		return "board/boardRegister";
	}
	
	@PostMapping("board-register")
	public String boardRegister(BoardVO boardVO, TagVO tagVO, @RequestParam("tags") String tags) {
		String category = URLEncoder.encode(boardVO.getCategory_type(), StandardCharsets.UTF_8);
		if(boardVO.getBoard_no() != 0) {
			service.boardModify(boardVO);
		} else {
			service.boardWrite(boardVO, tagVO, tags);
		}
		return "redirect:/board/board-list?board_category=" + category;
	}
	
	@PostMapping("board-modify")
	public String boardModify() {
		
		return "";
	}
	
	@PostMapping("board-remove")
	public @ResponseBody void boardRemove(BoardVO vo) {
		service.boardRemove(vo);
	}
	
	@GetMapping("upload-test")
	public String uploadTest() {
		return "board/uploadTest";
	}
	
	@PostMapping("like")
	@ResponseBody
	public int like(BoardVO vo ) {
		
		service.increaseLikeCount(vo) ;
		return 32;
		
		
	}
	
	@PostMapping("dislike")
	@ResponseBody
	public int dislike(BoardVO vo ) {
		
		service.decreaseLikeCount(vo) ;
		return 32;
		
		
	}
	

}
