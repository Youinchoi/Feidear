package com.example.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.FestivalDAO;
import com.example.domain.FestivalVO;
import com.example.domain.SearchCriteria;

@Service
public class FestivalServiceImpl implements FestivalService {

	@Autowired
	private FestivalDAO festivalDAO;

	//달력에 DB등록 되어있는 축제목록 출력
	public List<FestivalVO> calendar() {
		List<FestivalVO> list=festivalDAO.calendar();
		//System.out.println("[FestivalService] calendar serviceimpl");
		return list;
	}

	//달력 일정 삭제
	public void calrendarDelete(FestivalVO vo) {
		festivalDAO.calrendarDelete(vo);
		System.out.println("[FestivalService] calendar serviceimpl");
	}

	//달력 일정 수정
	public void calrendarModify(FestivalVO vo) {
		festivalDAO.calrendarModify(vo);
		System.out.println("[FestivalService] calendar serviceimpl");		
	}

	//달력 새 일정 저장
	public void calrendarSave(FestivalVO vo) {
		festivalDAO.calrendarSave(vo);
		System.out.println("[FestivalService] calendar serviceimpl");				
	}

	// 축제 정보 클릭 시 전체 목록 출력
	public List<FestivalVO> viewFestivalList(SearchCriteria scri){
		return festivalDAO.viewFestivalList(scri);
	}
	
    // 축제 정보 목록에서 필터 설정 후 검색
	public List<FestivalVO> filteredFestivalList(SearchCriteria scri){
		return festivalDAO.filteredFestivalList(scri);
	}
	
	// 축제 상세페이지
	public FestivalVO viewFestival(int fetv_no) {
		return festivalDAO.viewFestival(fetv_no);
	}
	
	//게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception {
		return festivalDAO.listCount(scri);
	}
	
/* ====== 추천 알고리즘 ====== */
	
	//추천 알고리즘 테스트 페이지 축제목록 출력
	public List<FestivalVO> getRecommList() {
		List<FestivalVO> list=festivalDAO.getRecommList();
		System.out.println("[FestivalService] getRecommList serviceimpl");
		return list;
	}

	//추천 알고리즘 선택한 태그 목록 출력
	public FestivalVO getTags(Integer num) {
		FestivalVO vo = festivalDAO.getTags(num);
		return vo;
	}
		
	//추천 알고리즘 테스트 결과 DB에 저장
	public void insertTest(HashMap<String, String> res) {		
		festivalDAO.insertTest(res);			
	}

	//추천 알고리즘 테스트 결과 DB에서 삭제
	public void deleteTest(String u_id) {
		festivalDAO.deleteTest(u_id);
	}

	//이미 검사한 적 있는지 확인
	public List<String> getResult(String u_id) {
		return festivalDAO.getResult(u_id);
	}

	//추천 결과 불러오기 : 축제 이름으로
	public FestivalVO getRecommResult(String r_fetv_name) {
		return festivalDAO.getRecommResult(r_fetv_name);
	}
	
	//DB에 저장된 검사결과 조회(태그용)
	@Override
	public List<FestivalVO> getResultList(String u_id) {
		return festivalDAO.getResultList(u_id);
	}
		
	/* ====== 추천 알고리즘 끝 ====== */
	
	// 관리자 - 축제 등록 전송
	public int insertFestival(FestivalVO vo) {
		return festivalDAO.insertFestival(vo);
	}
}
