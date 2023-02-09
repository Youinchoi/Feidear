package com.example.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class FestivalVO {
	
	private int fetv_no;			//축제 번호
	private String fetv_name;		//축제 이름
	private String fetv_short;		//축제 짧은 설명
	private String fetv_startdate;	//축제 시작일
	private String fetv_enddate;	//축제 종료일
	private String fetv_info;		//축제 상세 정보
	private String fetv_image;		//축제 이미지 - 실제로 연결되는 파일명
	private String fetv_tel;		//축제 전화번호
	private String fetv_homePage;	//축제 홈페이지
	private String fetv_addr;		//축제 주소
	private String fetv_place;		//축제 행사장소
	private String fetv_host;		//축제 주최
	private String fetv_fee;		//축제 이용요금
	private String fetv_time;		//축제 행사시간
	private String fetv_tag;		//축제 태그
	private int fetv_state;			//축제 상태
	private String fetv_area;		//축제 지역 분류
	private int fetv_cnt;			//축제 조회수
	
	private String 	file_name;			// 파일 이름
	private long 	file_size;			// 파일 사이즈
	private String 	origin_file_name;	// 원본 파일 이름
	private String	file_path;			// 파일 경로 - 실제로 연결되는 파일명
	
//	화면에서 type='file' name='file'이라서 변수명이 file

	MultipartFile file;
	MultipartFile file2;
	
	
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
			File f = new File("D:/springbootFinal/Feidear/src/main/resources/static/festival_imgs/"+origin_file_name);
			
			//우리가 jsp에서 불러와야 하는 파일 경로
			this.file_path = "/festival_imgs/"+origin_file_name;
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대경로로 수정하기
			
			try {
				
			file.transferTo(f);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}// end of if
	} // end of setFile()
	
	//지도 API 추가
	private String fetv_lat;		//축제 지역 분류
	private String fetv_long;		//축제 지역 분류

	

	//mldataset 에서 나온 변수들
	private String r_fetv_name;
	private String r_fetv_est;
	private String recomm_no;
	private String u_id;
	private String r_fetv_tag;

}
