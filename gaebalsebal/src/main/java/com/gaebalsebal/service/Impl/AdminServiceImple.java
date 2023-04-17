package com.gaebalsebal.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.persistence.AdminMapper;
import com.gaebalsebal.service.interfaces.AdminService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AdminServiceImple implements AdminService{
	
	private final AdminMapper mapper;

	@Override
	public List<BoardVO> getNonActiveBoardList() {
		// TODO Auto-generated method stub
		return mapper.getNonActiveBoardList();
	}
	
	

}
