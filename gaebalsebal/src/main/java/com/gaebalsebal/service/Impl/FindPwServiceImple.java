package com.gaebalsebal.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaebalsebal.domain.MemberDTO;
import com.gaebalsebal.persistence.FindPwMapper;
import com.gaebalsebal.service.interfaces.FindPwService;

@Service
public class FindPwServiceImple implements FindPwService{

	@Autowired
	FindPwMapper findPwMapper;
	
	@Override
	public String findPW(MemberDTO member) {
		String memberPw = findPwMapper.findPW(member);
		if(memberPw == null ) {
			return null;
		}
		
		return memberPw;
	}

}
