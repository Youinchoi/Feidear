package com.example.domain;

import lombok.Data;

@Data
public class ReviewsCommentVO {

	private Integer rv_cmt_no;			// 리뷰 댓글 번호
	private String 	rv_cmt_regdate;		// 리뷰 댓글 작성일
	private String 	rv_cmt;				// 리뷰 댓글 내용
	private Integer rv_no;				// 리뷰 번호
	private Integer u_no;				// 사용자 번호
	private String 	u_id;				// 사용자 아이디
	private String 	u_file_path;		// 사용자 파일 경로
} 
