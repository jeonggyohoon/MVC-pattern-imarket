package com.smhrd.model.news;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
//@RequiredArgsConstructor

public class NewsInfoDTO {
	private String n_title;
	private String n_content;
	private String n_url;
	private String n_file;
	private String n_date;
	private String n_newspaper;
	
	
}
