package com.gaebalsebal.service.interfaces;

import java.util.List;

import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.Criteria;

public interface BoardService{

		public List<BoardVO> getList(Criteria cri);

		public int getTotal(Criteria cri);
}
