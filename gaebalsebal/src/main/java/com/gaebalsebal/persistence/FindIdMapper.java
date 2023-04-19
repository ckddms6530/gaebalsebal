package com.gaebalsebal.persistence;

import org.apache.ibatis.annotations.Mapper;

import com.gaebalsebal.domain.MemberDTO;

@Mapper
public interface FindIdMapper {

	public String findID(MemberDTO member);
}
