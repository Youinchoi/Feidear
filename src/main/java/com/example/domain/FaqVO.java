package com.example.domain;

import lombok.Data;

@Data
public class FaqVO {					// FAQ
	
	private Integer faq_no;				// faq 번호
	private String 	faq_title;			// faq 제목
	private String 	faq_content;		// faq 내용

}