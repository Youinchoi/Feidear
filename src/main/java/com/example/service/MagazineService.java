package com.example.service;

import java.util.List;

import com.example.domain.Criteria;
import com.example.domain.MagazineVO;

public interface MagazineService {

	public MagazineVO getMagazine(MagazineVO vo);				// 매거진 상세 보기
	
	public List<MagazineVO> getMagazineList(Criteria cri);		// 내 매거진 목록 보기
	
	public int listCount() throws Exception;					// 게시물 총 갯수
	
	public void saveMagazine(MagazineVO vo);					// 매거진 저장
	
	public void deleteMagazine(MagazineVO vo);					// 매거진 삭제

	public List<MagazineVO> getMagazine3();		// 최신 매거진 목록 3개 보기
}
