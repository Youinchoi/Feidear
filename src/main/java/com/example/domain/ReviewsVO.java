package com.example.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ReviewsVO {				// 축제 일기(리뷰)
	
	private Integer rv_no;				// 리뷰 번호 (nextval)
	private String 	rv_title;			// 리뷰 제목
	private String 	rv_content;			// 리뷰 내용
	private String 	rv_tag;				// 리뷰 태그
	private String 	rv_image;			// 리뷰 이미지
	private String 	rv_like;			// 리뷰 좋아요 수
	private String  rv_regdate;			// 리뷰 작성일
	private Integer u_no;				// 리뷰 작성자 번호
	
	private Integer file_num;			// 파일 번호
	private String 	file_name;			// 파일 이름
	private String 	origin_file_name;	// 원본 파일 이름
	private long 	file_size;			// 파일 사이즈
	private String  file_path;			// 파일 경로

//	화면에서 type='file' name='file'이라서 변수명이 file
	
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일이 있는 경우 //
		if(!file.isEmpty()) {
			
			this.file_name = file.getOriginalFilename();
			this.file_size = file.getSize();
			
			UUID uuid = UUID.randomUUID();
			this.origin_file_name = uuid.toString()+"_"+file_name;
			
			
			this.origin_file_name = file_name;
			
			File f = new File("D:\\springbootFinal\\Feidear\\src\\main\\resources\\static\\upload_img_file\\"+origin_file_name);
			
			this.file_path = "D:\\springbootFinal\\Feidear\\src\\main\\resources\\static\\upload_img_file\\"+origin_file_name;
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대경로로 수정하기
			try {
				
			file.transferTo(f);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}// end of if
	} // end of setFile()
	
} // end of class