package com.gaebalsebal.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gaebalsebal.domain.BoardVO;

@Mapper
public interface AdminMapper {
	
	public List<BoardVO> getNonActiveBoardList();

}
