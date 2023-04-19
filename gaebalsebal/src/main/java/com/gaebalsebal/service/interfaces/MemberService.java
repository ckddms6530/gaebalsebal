package com.gaebalsebal.service.interfaces;

import com.gaebalsebal.domain.MemberDTO;

public interface MemberService {
	
    public int memberJoin(MemberDTO member);
    
    public int idCheck(MemberDTO member);
}