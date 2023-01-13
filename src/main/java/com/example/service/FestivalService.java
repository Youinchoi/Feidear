package com.example.service;
import java.util.HashMap;
import java.util.List;

import com.example.domain.FestivalVO;
import com.example.domain.SearchCriteria;

public interface FestivalService {
	
	//달력에 DB등록 되어있는 축제목록 출력
	public List<FestivalVO> calendar();
	
	//캘린더 삭제
	public void calrendarDelete(FestivalVO vo);
		
	//캘린더 정보 수정 
	public void calrendarModify(FestivalVO vo);
	
	//캘린더 새 일정 등록
	public void calrendarSave(FestivalVO vo);
	
	// 축제 정보 클릭 시 전체 목록 출력
	public List<FestivalVO> viewFestivalList(SearchCriteria scri);
	
    // 축제 정보 목록에서 필터 설정 후 검색
	public List<FestivalVO> filteredFestivalList(SearchCriteria scri);
	
	// 축제 상세페이지
	public FestivalVO viewFestival(int fetv_no);
	
	//게시글 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;				

	/* ====== 추천 알고리즘 ====== */
	
	//추천 알고리즘 테스트 페이지 축제목록 출력
	public List<FestivalVO> getRecommList();
	
	//추천 알고리즘 데이터 저장할 축제 태그 불러오기
	public FestivalVO getTags(Integer num);

	//추천 알고리즘 테스트 결과 DB에 저장
	public void insertTest(HashMap<String, String> res);
	
	//추천 알고리즘 테스트 결과 DB에서 삭제
	public void deleteTest(String u_id);
	
	//DB에 검사결과가 있는지 조회
	public List<String> getResult(String u_id);
	/* ====== 추천 알고리즘 끝 ====== */
	
}
