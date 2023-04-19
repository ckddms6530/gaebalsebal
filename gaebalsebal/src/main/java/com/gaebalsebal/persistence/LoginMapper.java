package com.gaebalsebal.persistence;

import org.apache.ibatis.annotations.Mapper;

import com.gaebalsebal.domain.MemberDTO;

@Mapper
public interface LoginMapper {
	public int memberLogin(MemberDTO member);
}
