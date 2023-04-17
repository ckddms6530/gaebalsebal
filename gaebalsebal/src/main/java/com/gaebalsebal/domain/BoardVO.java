package com.gaebalsebal.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int board_no;
	private String board_category;
	private String board_title;
	private String board_writer;
	private String board_content;
	private int board_view;
	private int board_like;
	private Date board_create_date;
	private Date board_update_date;
	private String board_use_yn;
	private int member_no;
}
