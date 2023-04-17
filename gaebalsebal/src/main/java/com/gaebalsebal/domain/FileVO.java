package com.gaebalsebal.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class FileVO {
	
	private int file_no;
	private String file_name;
	private String file_uuid;
	private String folder_path;
	private int board_no;
	
	public String getImageURL() {
		try {
			return URLEncoder.encode(folder_path+"/"+file_uuid+"_"+file_name, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "";
	}

}
