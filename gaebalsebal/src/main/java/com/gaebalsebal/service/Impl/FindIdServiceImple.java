package com.gaebalsebal.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaebalsebal.domain.MemberDTO;
import com.gaebalsebal.persistence.FindIdMapper;
import com.gaebalsebal.service.interfaces.FindIdService;

@Service
public class FindIdServiceImple implements FindIdService{

	@Autowired
	FindIdMapper findIdMapper;

	@Override
	public String findID(MemberDTO member) {
		String memberId = findIdMapper.findID(member);
		if(memberId == null) {
			return null;
		}
		
		return memberId;
	}
	
	
	
	

}
