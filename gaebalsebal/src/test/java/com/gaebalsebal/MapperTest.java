package com.gaebalsebal;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.gaebalsebal.MapperTest;
import com.gaebalsebal.domain.BoardVO;
import com.gaebalsebal.domain.Criteria;
import com.gaebalsebal.domain.PageDTO;
import com.gaebalsebal.persistence.BoardMapper;
import com.gaebalsebal.persistence.TestMapper;

import lombok.extern.log4j.Log4j2;

@Log4j2
@SpringBootTest
public class MapperTest {
	
	@Autowired
	TestMapper mapper;
	
	@Autowired
	BoardMapper mapper2;
	

	
	//@Test
	public void mapperTest() {
		
		mapper.getTime();
	}
	
	@Test
	public void mapperTest2() {
		
		Criteria cri = new Criteria();
		cri.setKeyword("3");
		cri.setType("T");
		
		List<BoardVO> list = mapper2.getListWithPaging(cri);
		
		log.info(list);
	
	}
	
	
	//@Test
	public void testPageDTO() {
		
		Criteria cri = new Criteria();
		cri.setPageNum(21);
		cri.setKeyword("제목");
		cri.setType("T");
		
		PageDTO pageDTO = new PageDTO(cri, 250);
		
		log.info(pageDTO);
	}
}
