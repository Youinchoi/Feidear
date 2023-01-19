package com.example.domain;

import lombok.Data;

@Data
public class WishVO {
	private Integer wish_no;
	private Integer fetv_no;
	private Integer u_no;
	private Integer wish_state;
	private String fetv_name;
	private String fetv_area;
	private String fetv_image;
	private String fetv_startdate;	//축제 시작일
	private String fetv_enddate;
	private String fetv_short;
}
