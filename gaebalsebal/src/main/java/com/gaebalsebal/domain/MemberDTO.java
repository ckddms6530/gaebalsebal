package com.gaebalsebal.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class MemberDTO {
	
	private String member_no;
	private String member_id;
	private String member_pw;
	private String member_email;
	private String member_nickname;
	private String member_name;

}
