package com.gaebalsebal.persistence;

import java.io.File;
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
	
	
	
	public List<BoardVO> selectBoardList(BoardVO vo);
	
	public BoardVO selectBoard(BoardVO vo);
	
	public void updateView(BoardVO vo);
	
	public void insertBoard(BoardVO vo);
	
	public void updateBoard(BoardVO vo);
	
	public void deleteBoard(BoardVO vo);
	
	public void insertTag(TagVO vo);
	
	public void insertFile(File vo);

	public int increaseLikeCount(BoardVO vo);

	public int decreaseLikeCount(BoardVO vo);

	

	
}
