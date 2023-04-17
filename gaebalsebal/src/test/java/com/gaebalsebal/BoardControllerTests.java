package com.gaebalsebal;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;



import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Log4j2
@SpringBootTest
@AutoConfigureMockMvc
public class BoardControllerTests {
		
		@Autowired
		MockMvc mockMvc;
	
	
	
		@Test
		public void testListPaging() throws Exception{
			
			log.info(mockMvc.perform(
					MockMvcRequestBuilders.get("/board/list")
					.param("pageNum","2")
					.param("amount", "10")	)
					.andReturn().getModelAndView().getModelMap());
		}
}
