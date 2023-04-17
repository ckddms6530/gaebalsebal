package com.gaebalsebal.service.interfaces;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gaebalsebal.domain.BoardVO;


public interface AdminService {
	
public List<BoardVO> getNonActiveBoardList();


}
