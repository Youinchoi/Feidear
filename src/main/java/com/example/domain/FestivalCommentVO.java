package com.example.domain;

import lombok.Data;

@Data
public class FestivalCommentVO {
	
	private Integer cmt_no; // 축제 상세 댓글 번호
	private String cmt_regdate; // 축제 상세 댓글 작성일 
	private String cmt_content; // 축제 상세 댓글 내용
	private Integer fetv_no; // 축제 번호
	private Integer u_no; // 사용자 번호
	private String 	u_id;				// 사용자 아이디
	private String 	u_file_path;		// 사용자 파일 경로

}
