package com.gaebalsebal.persistence;

import java.io.File;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.TagVO;

@Mapper
public interface BoardMapper {
	
	public List<BoardVO> selectBoardList(BoardVO vo);
	
	public BoardVO selectBoard(BoardVO vo);
	
	public void updateView(BoardVO vo);
	
	public void insertBoard(BoardVO vo);
	
	public void updateBoard(BoardVO vo);
	
	public void deleteBoard(BoardVO vo);
	
	public void insertTag(TagVO vo);
	
	public void insertFile(File vo);
	
	
	
	
}
