package com.example.domain;

import java.util.Date;

import lombok.Data;

@Data
public class EventVO {
	
	private Integer ev_no;		//이벤트 글 번호
	private String	ev_content;	//이벤트 글 내용
	private String	ev_title;	//이벤트 글 제목
	private Date	ev_regdate;	//이벤트 글 쓴 시간
	

}
