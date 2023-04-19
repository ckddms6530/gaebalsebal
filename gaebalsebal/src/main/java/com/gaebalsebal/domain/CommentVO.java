package com.gaebalsebal.domain;

import lombok.Data;

@Data
public class CommentVO {
	
	private int comments_no;
	private int board_no;
	private int member_no;
	private String comments_content;
	private String comments_writer;
	private String comments_create_date;
	private int comments_dep;
	private int comments_group;
	private String comments_use_yn; //Default = 'Y'

}
