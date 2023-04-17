package com.gaebalsebal.service.interfaces;

import java.util.List;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.TagVO;

public interface BoardService {
	
	public List<BoardVO> boardListRead(BoardVO vo);
	
	public BoardVO boardRead(BoardVO vo);
	
	public void boardWrite(BoardVO boardVO, TagVO tagVO, String tags);
	
	public void boardModify(BoardVO vo);
	
	public void boardRemove(BoardVO vo);
	
	

}
