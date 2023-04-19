package com.gaebalsebal.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaebalsebal.domain.MemberDTO;
import com.gaebalsebal.persistence.MemberMapper;
import com.gaebalsebal.service.interfaces.MemberService;

@Service
public class MemberServiceImple implements MemberService{

	@Autowired
	MemberMapper memberMapper;
	
	
	@Override
	public int memberJoin(MemberDTO member) {
		
		return memberMapper.memberJoin(member) ;
	}


	 @Override
	 public int idCheck(MemberDTO member) {
	     return memberMapper.idCheck(member);
	    }
	
	


}