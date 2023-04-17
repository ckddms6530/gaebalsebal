package com.gaebalsebal.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.net.http.HttpHeaders;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.FileVO;
import com.gaebalsebal.domain.TagVO;
import com.gaebalsebal.service.interfaces.BoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequiredArgsConstructor
@RequestMapping("/board/*")
public class BoardController {
	
	private final BoardService service;
	
	@GetMapping("board-list")
	public String boardList(BoardVO vo, Model model) {
		if(vo.getBoard_category() == null) {
			vo.setBoard_category("질문게시판");
		}
		model.addAttribute("category", vo.getBoard_category());
		model.addAttribute("boardList", service.boardListRead(vo));
		
		return "board/boardList";
	}
	
	@GetMapping("board-read")
	public String boardRead(BoardVO vo, Model model) {
		
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
		String category = URLEncoder.encode(boardVO.getBoard_category(), StandardCharsets.UTF_8);
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
	
	@Value("${com.gaebalsebal.upload.path}")
	private String uploadPath;
	
	@PostMapping("upload-file")
	public @ResponseBody ResponseEntity<List<FileVO>> uploadFile(MultipartFile[] uploadFiles) {
		
		List<FileVO> resultDTOList = new ArrayList<>();
		
		for(MultipartFile uploadFile : uploadFiles) {
			
			//이미지 파일만 업로드 가능
			if(uploadFile.getContentType().startsWith("image") == false) {
				log.warn("this file is not image type");
				return new ResponseEntity<>(HttpStatus.FORBIDDEN);
			}
			
			//전체 경로에서 파일 이름만 추출
			String originalName = uploadFile.getOriginalFilename();
			String fileName = originalName.substring(originalName.lastIndexOf("\\") + 1);
			
			log.info("fileName: " + fileName);
			
			//날짜 폴더 생성
			String folderPath = makeFolder();
			//UUID
			String uuid = UUID.randomUUID().toString();
			
			//저장할 파일 이름 중간에 "_"를 이용해서 구분
			String saveName = uploadPath + File.separator + folderPath + File.separator + uuid + "_" + fileName;
			
			Path savePath = Paths.get(saveName);
			
			try {
				uploadFile.transferTo(savePath); //실제 이미지 저장
				resultDTOList.add(new FileVO(0, fileName, uuid, folderPath, 0));
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		return new ResponseEntity<>(resultDTOList, HttpStatus.OK);
	}

	private String makeFolder() {
		
		String str = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));
		
		String folderPath = str.replace("/", File.separator);
		
		// make folder
		File uploadPathFolder = new File(uploadPath, folderPath);
		
		if(uploadPathFolder.exists() == false) {
			uploadPathFolder.mkdirs();
		}
		return folderPath;
	}
	
	@GetMapping("/display")
	public @ResponseBody ResponseEntity<byte[]> getFile(String fileName){
		ResponseEntity<byte[]> result = null;
		
		try {
			String srcFileName = URLDecoder.decode(fileName, "UTF-8");
			
			log.info("fileName: " + srcFileName);
			
			File file = new File(uploadPath + File.separator + srcFileName);
			
			log.info("file: " + file);
			
			org.springframework.http.HttpHeaders header = new org.springframework.http.HttpHeaders();
			
			//MIME타입 처리
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			//파일 데이터 처리
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		}catch (Exception e) {
			log.error(e.getMessage());
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		return result;
		
	}
	

}
