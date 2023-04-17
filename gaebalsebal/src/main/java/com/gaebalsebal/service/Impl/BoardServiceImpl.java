package com.gaebalsebal.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.Criteria;
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
	
	

}
