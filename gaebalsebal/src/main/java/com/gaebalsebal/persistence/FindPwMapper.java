package com.gaebalsebal.persistence;

import org.apache.ibatis.annotations.Mapper;

import com.gaebalsebal.domain.MemberDTO;

@Mapper
public interface FindPwMapper {
	
	public String findPW(MemberDTO member);
}
