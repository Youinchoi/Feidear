package com.example.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {
	
	private Integer u_no;		//사용자 번호
	private String u_id;			//사용자 아이디
	private String u_pw;		//사용자 비밀번호
	private String u_name;		//사용자 이름
	private String u_email;		//사용자 이메일
	private String u_image;		//사용자 이미지
	private Integer u_group;		//사용자 구분
	private Integer u_state;		//사용자 상태
	private Integer u_sup;		//사용자 서포터즈
	private Date u_date;		//사용자 가입 일자
	private Integer u_age;		//사용자 나이대
	private String u_gender;		//사용자 성별
	private String u_comment;		//사용자 자기소개란
	private String u_phone;		//사용자 번호
	

}
