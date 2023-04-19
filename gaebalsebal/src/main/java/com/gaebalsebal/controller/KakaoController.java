package com.gaebalsebal.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gaebalsebal.service.interfaces.KakaoServcie;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping(value="/member/*")
@RequiredArgsConstructor
public class KakaoController {

	@Autowired
	private KakaoServcie kakaoService;

	@RequestMapping(value="/kakao", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, RedirectAttributes ra) throws Exception {
	    String access_Token = kakaoService.getAccessToken(code);
	    
	    // Get user info
	    HashMap<String, Object> userInfo = kakaoService.getUserInfo(access_Token);
	    System.out.println("###access_Token#### : " + access_Token);
	    System.out.println("###nickname#### : " + userInfo.get("nickname"));
	    System.out.println("###email#### : " + userInfo.get("email"));
	    
	    // Set redirect URL as an attribute
	    ra.addAttribute("access_token", access_Token);
	    ra.addAttribute("nickname", userInfo.get("nickname"));
	    ra.addAttribute("email", userInfo.get("email"));
	    
	    // Redirect to "/board/boardList"
	    return "redirect:/board/list";
	}
	
	@RequestMapping(value="/boardList", method=RequestMethod.GET)
	public String boardList(RedirectAttributes ra) {
		String access_Token = (String) ra.getAttribute("access_token");
		String nickname = (String) ra.getAttribute("nickname");
		String email = (String) ra.getAttribute("email");
	    
	    // Use the retrieved data as needed
	    
	    return "board/boardList";
	}

}