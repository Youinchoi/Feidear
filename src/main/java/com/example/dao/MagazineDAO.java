package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.Criteria;
import com.example.domain.MagazineVO;

@Mapper
public interface MagazineDAO {

	public MagazineVO getMagazine(MagazineVO vo);				// 매거진 상세 보기
	
	public List<MagazineVO> getMagazineList(Criteria cri);		// 내 매거진 목록 보기
	
	public int listCount() throws Exception;					// 게시물 총 갯수
	
	public void saveMagazine(MagazineVO vo);					// 매거진 저장
	
	public void deleteMagazine(MagazineVO vo);					// 매거진 삭제
	
	public List<MagazineVO> getMagazine3();		// 최신 매거진 목록 3개 가져오기
	
}


/*
 *	기본적인 구조라면 인터페이스를 구현한 클래스 BoardDAOImpl.java 가 필요함
 *	그 클래스를 @Repository 로 지정해야 함
 * 	@Mapper 를 사용하면 이 단계들을 뛰어넘어 사용 가능.
 * 	이름을 맞춰주어야 사용 가능함.
 * 
 */
