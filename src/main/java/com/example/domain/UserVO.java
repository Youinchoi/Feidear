package com.example.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {
	
	private int u_no;
	private String u_id;
	private String u_pw;
	private String u_name;
	private String u_email;
	private String u_image;
	private String u_comment;
	private String u_phone;
	private int u_group;
	private int u_state;
	private int u_sup;
	private Date u_date;
	

}
