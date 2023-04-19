package com.gaebalsebal.service.interfaces;

import java.util.List;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.CommentVO;
import com.gaebalsebal.domain.Criteria;
import com.gaebalsebal.domain.TagVO;

public interface BoardService{

		public List<BoardVO> getList(Criteria cri);

		public int getTotal(Criteria cri);
		
		public List<BoardVO> boardListRead(BoardVO vo);
		
		public BoardVO boardRead(BoardVO vo);
		
		public void boardWrite(BoardVO boardVO, TagVO tagVO, String tags);
		
		public void boardModify(BoardVO vo);
		
		public void boardRemove(BoardVO vo);

		public int increaseLikeCount(BoardVO vo);

		public int decreaseLikeCount(BoardVO vo);
		
		public List<CommentVO> viewReply(CommentVO vo);
		
		public void saveComment(CommentVO vo);
		
		public void saveRecomment(CommentVO vo);
		
		public void saveDeleteComment(CommentVO vo);
		
}
