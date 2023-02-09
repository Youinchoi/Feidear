package com.example.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class EventVO {
	
	private Integer ev_no;		//이벤트 글 번호
	private String	ev_content;	//이벤트 글 내용
	private String	ev_title;	//이벤트 글 제목
	private Date	ev_regdate;	//이벤트 글 쓴 시간
	
	private String 	file_name;			// 파일 이름
	private String 	origin_file_name;	// 원본 파일 이름
	private long 	file_size;			// 파일 사이즈
	private String  file_path;			// 파일 경로		

	private String 	file_name2;			// 세부 파일 이름
	private String 	origin_file_name2;	// 세부 원본 파일 이름
	private long 	file_size2;			// 세부 파일 사이즈
	private String  file_path2;			// 세부 파일 경로
	
//	화면에서 type='file' name='file'이라서 변수명이 file
	
	MultipartFile file;
	MultipartFile file2; // 세부 이미지 파일
	
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
			File f = new File("D:/springbootFinal/Feidear/src/main/resources/static/event_img_file/"+origin_file_name);
			
			//우리가 jsp에서 불러와야 하는 파일 경로
			this.file_path = "/event_img_file/"+origin_file_name;
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대경로로 수정하기
			try {
				
			file.transferTo(f);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}// end of if
	} // end of setFile()

	// 세부 이미지 파일 Getter
	public MultipartFile getFile2() {
		return file2;
	}

	// 세부 이미지 파일 Setter
	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
		
		// 업로드 파일이 있는 경우 //
		if(!file2.isEmpty()) {
			
			this.file_name2 = file2.getOriginalFilename();
			this.file_size2 = file2.getSize();
			
			UUID uuid = UUID.randomUUID();
			this.origin_file_name2 = uuid.toString()+"_"+file_name2;
			
			//진짜 로컬에 파일이 저장되는 경로
			File f = new File("D:/springbootFinal/Feidear/src/main/resources/static/event_img_file/"+origin_file_name2);
			
			//우리가 jsp에서 불러와야 하는 파일 경로
			this.file_path2 = "/event_img_file/"+origin_file_name2;
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대경로로 수정하기
			try {
				
			file2.transferTo(f);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}// end of if
	} // end of setFile2()

}
