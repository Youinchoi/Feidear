package com.example.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UserVO {
	
	private Integer u_no;		//사용자 번호
	private String u_id;		//사용자 아이디
	private String u_pw;		//사용자 비밀번호
	private String u_name;		//사용자 이름
	private String u_email;		//사용자 이메일
	private Integer u_group;	//사용자 구분
	private Integer u_state;	//사용자 상태
	private Integer u_sup;		//사용자 서포터즈
	private Date u_date;		//사용자 가입 일자
	private Integer u_age;		//사용자 나이대
	private String u_gender;	//사용자 성별
	private String u_comment;	//사용자 자기소개란
	private String u_phone;		//사용자 번호
	
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
			
			//진짜 로컬에 파일이 저장되는 경로
			File f = new File("D:/springbootFinal/Feidear/src/main/resources/static/user_img_file/"+origin_file_name);
			
			//우리가 jsp에서 불러와야 하는 파일 경로
			this.file_path = "/user_img_file/"+origin_file_name;
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대경로로 수정하기
			try {
				
			file.transferTo(f);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}// end of if
	} // end of setFile()

}
