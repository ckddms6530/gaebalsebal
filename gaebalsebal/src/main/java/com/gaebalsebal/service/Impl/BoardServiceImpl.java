package com.gaebalsebal.service.Impl;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Service;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.Criteria;
import com.gaebalsebal.domain.TagVO;
import com.gaebalsebal.persistence.BoardMapper;
import com.gaebalsebal.service.interfaces.BoardService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService{
	
	private final BoardMapper mapper;

	@Override
	public List<BoardVO> getList(Criteria cri) {
		List<BoardVO> boardList = mapper.getListWithPaging(cri);
        for (BoardVO board : boardList) {
            board.setTag_list(mapper.getTagList(board.getBoard_no()));
        }
        return boardList;
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<BoardVO> boardListRead(BoardVO vo) {
		return mapper.selectBoardList(vo);
	}

	@Override
	public BoardVO boardRead(BoardVO vo) {
		mapper.updateView(vo);
		return mapper.selectBoard(vo);
	}

	@Override
	public void boardWrite(BoardVO boardVO, TagVO tagVO, String tags) {
		mapper.insertBoard(boardVO);
		
		Pattern pattern = Pattern.compile("#([ㄱ-ㅎ가-힣A-Za-z0-9_-]+)");
		Matcher matcher = pattern.matcher(tags);
		List<String> hashtags = new ArrayList<>();
		while (matcher.find()) {
		    hashtags.add(matcher.group(1));
		}
		for (String hashtag : hashtags) {
			tagVO.setTag_name(hashtag);
			tagVO.setBoard_no(boardVO.getBoard_no());
			mapper.insertTag(tagVO);
		}
		
		
	}

	@Override
	public void boardModify(BoardVO vo) {
		mapper.updateBoard(vo);
	}

	@Override
	public void boardRemove(BoardVO vo) {
		mapper.deleteBoard(vo);
	}

	@Override
	public int increaseLikeCount(BoardVO vo) {
		// TODO Auto-generated method stub
		return mapper.increaseLikeCount(vo);
	}

	@Override
	public int decreaseLikeCount(BoardVO vo) {
		return mapper.decreaseLikeCount(vo);
	}
	
	
	

}
