package com.gaebalsebal.persistence;

import org.apache.ibatis.annotations.Mapper;

import com.gaebalsebal.domain.MemberDTO;

@Mapper
public interface MemberMapper {
    public int memberJoin(MemberDTO member);
    public int idCheck(MemberDTO member);
}