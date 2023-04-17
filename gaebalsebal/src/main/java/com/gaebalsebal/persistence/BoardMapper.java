package com.gaebalsebal.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.Criteria;
import com.gaebalsebal.domain.TagVO;

@Mapper
public interface BoardMapper {

	public List<BoardVO> getListWithPaging(Criteria cri);

	public int getTotalCount(Criteria cri);

	public List<TagVO> getTagList(int board_no);
	
	
}
