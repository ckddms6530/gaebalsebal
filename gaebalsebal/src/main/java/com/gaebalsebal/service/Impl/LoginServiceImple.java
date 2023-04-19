package com.gaebalsebal.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gaebalsebal.domain.MemberDTO;
import com.gaebalsebal.persistence.LoginMapper;
import com.gaebalsebal.service.interfaces.LoginService;

@Service
public class LoginServiceImple implements LoginService {

	@Autowired
	LoginMapper loginMapper;
	
	@Override
	public int memberLogin(MemberDTO member) {
		return loginMapper.memberLogin(member);
	}

}
