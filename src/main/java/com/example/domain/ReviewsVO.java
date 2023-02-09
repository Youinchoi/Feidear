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
	private Integer rv_cnt;				// 리뷰 조회수
	private String  rv_regdate;			// 리뷰 작성일
	private Integer u_no;				// 리뷰 작성자 번호
	private String  u_id;				// 리뷰 작성자 아이디
	private String  u_comment;			// 리뷰 작성자 소개
	
	private Integer file_num;			// 파일 번호
	private String 	file_name;			// 파일 이름
	private String 	origin_file_name;	// 원본 파일 이름
	private long 	file_size;			// 파일 사이즈
	private String  file_path;			// 파일 경로 (리뷰 상세보기 : 사용자 파일 경로로 쓰임)
	private String 	r_file;				// 		  (리뷰 상세보기 : 리뷰 파일 경로로 쓰임)
	
	private String 	file_name2;			// 파일 이름
	private String 	origin_file_name2;	// 원본 파일 이름
	private long 	file_size2;			// 파일 사이즈
	private String  file_path2;			// 파일 경로 (리뷰 상세보기 : 사용자 파일 경로로 쓰임)
	
	private String 	file_name3;			// 파일 이름
	private String 	origin_file_name3;	// 원본 파일 이름
	private long 	file_size3;			// 파일 사이즈
	private String  file_path3;			// 파일 경로 (리뷰 상세보기 : 사용자 파일 경로로 쓰임)

	private String 	file_name4;			// 파일 이름
	private String 	origin_file_name4;	// 원본 파일 이름
	private long 	file_size4;			// 파일 사이즈
	private String  file_path4;			// 파일 경로 (리뷰 상세보기 : 사용자 파일 경로로 쓰임)

//	화면에서 type='file' name='file'이라서 변수명이 file
	MultipartFile file;
	
	//추가 파일
	MultipartFile file2;
	MultipartFile file3;
	MultipartFile file4;
	
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
			
			// 로컬에 저장되는 파일 경로
			File f = new File("D:/springbootFinal/Feidear/src/main/resources/static/upload_img_file/"+origin_file_name);
			
			// jsp에서 불러와야 하는 파일 경로
			this.file_path = "/upload_img_file/"+origin_file_name;
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대경로로 수정하기
			try {
				
			file.transferTo(f);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}// end of if
	} // end of setFile()
	
	public MultipartFile getFile2() {
		return file2;
	}
	
	public void setFile2(MultipartFile file) {
		this.file2 = file;
		
		// 업로드 파일이 있는 경우 //
		if(!file.isEmpty()) {
			
			this.file_name2 = file.getOriginalFilename();
			this.file_size2 = file.getSize();
			
			UUID uuid = UUID.randomUUID();
			this.origin_file_name2 = uuid.toString()+"_"+file_name2;
			
			// 로컬에 저장되는 파일 경로
			File f = new File("D:/springbootFinal/Feidear/src/main/resources/static/upload_img_file/"+origin_file_name2);
			
			// jsp에서 불러와야 하는 파일 경로
			this.file_path2 = "/upload_img_file/"+origin_file_name2;
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대경로로 수정하기
			try {
				
			file.transferTo(f);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}// end of if
	} // end of setFile()
	

	public MultipartFile getFile3() {
		return file3;
	}
	
	public void setFile3(MultipartFile file) {
		this.file3 = file;
		
		// 업로드 파일이 있는 경우 //
		if(!file.isEmpty()) {
			
			this.file_name3 = file.getOriginalFilename();
			this.file_size3 = file.getSize();
			
			UUID uuid = UUID.randomUUID();
			this.origin_file_name3 = uuid.toString()+"_"+file_name3;
			
			// 로컬에 저장되는 파일 경로
			File f = new File("D:/springbootFinal/Feidear/src/main/resources/static/upload_img_file/"+origin_file_name3);
			
			// jsp에서 불러와야 하는 파일 경로
			this.file_path3 = "/upload_img_file/"+origin_file_name3;
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대경로로 수정하기
			try {
				
			file.transferTo(f);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}// end of if
	} // end of setFile()
	

	public MultipartFile getFile4() {
		return file4;
	}
	
	public void setFile4(MultipartFile file) {
		this.file4 = file;
		
		// 업로드 파일이 있는 경우 //
		if(!file.isEmpty()) {
			
			this.file_name4 = file.getOriginalFilename();
			this.file_size4 = file.getSize();
			
			UUID uuid = UUID.randomUUID();
			this.origin_file_name4 = uuid.toString()+"_"+file_name4;
			
			// 로컬에 저장되는 파일 경로
			File f = new File("D:/springbootFinal/Feidear/src/main/resources/static/upload_img_file/"+origin_file_name4);
			
			// jsp에서 불러와야 하는 파일 경로
			this.file_path4 = "/upload_img_file/"+origin_file_name4;
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대경로로 수정하기
			try {
				
			file.transferTo(f);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}// end of if
	} // end of setFile()
	
		
	
} // end of class