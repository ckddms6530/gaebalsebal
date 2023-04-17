package com.gaebalsebal.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {
	
	private int board_no;
	private String board_writer;
	private String category_type;
	private String member_id;
	private String board_title;
	private String board_content;
	private Date board_create_date;
	private Date board_update_date;
	private int board_view;
	private int board_like;
	private String board_use_yn;
	private int board_category;
	private List<TagVO> tag_list; 
	
}
