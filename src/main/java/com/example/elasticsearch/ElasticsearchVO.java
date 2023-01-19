package com.example.elasticsearch;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

import lombok.Data;

@Data
@Document(indexName = "feidear_festival_list")
public class ElasticsearchVO {
	
	@Id				// 관계형 DB에서의 Primary Key 같은 역할
	private int 		fetv_no;		//축제 번호
	private String		fetv_name;		//축제 이름
	private String		fetv_short;		//축제 짧은 설명
	private String		fetv_startdate;	//축제 시작일
	private String		fetv_enddate;	//축제 종료일
	private String		fetv_info;		//축제 상세 정보
	private String		fetv_image;		//축제 이미지
	private String		fetv_tel;		//축제 전화번호
	private String		fetv_homePage;	//축제 홈페이지
	private String		fetv_addr;		//축제 주소
	private String		fetv_place;		//축제 행사장소
	private String		fetv_host;		//축제 주최
	private String		fetv_fee;		//축제 이용요금
	private String		fetv_time;		//축제 행사시간
	private String[]	fetv_tag;		//축제 태그 - Elasticsearch에 넣을 때 ','를 기준으로 잘라 배열형으로 저장했기 때문에 [] 사용
	private int			fetv_state;		//축제 상태
	private String		fetv_area;		//축제 지역 분류
	private int			fetv_cnt;		//축제 조회수
	
}