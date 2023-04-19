package com.gaebalsebal.persistence;

import java.io.File;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.CommentVO;
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

	//댓글 목록 나타내기
	public List<CommentVO> viewReply(CommentVO vo);
	
	//댓글 등록
	public void insertReply(CommentVO vo);
	
	//대댓글 등록
	public void insertRereply(CommentVO vo);
	
	//댓글 삭제
	public void deleteReply(CommentVO vo);

	

	
}
