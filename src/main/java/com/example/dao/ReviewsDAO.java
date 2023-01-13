package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.Criteria;
import com.example.domain.ReviewsVO;

@Mapper
public interface ReviewsDAO {

	public void insertReview(ReviewsVO vo);					// 새 리뷰 작성하기
	
	public List<ReviewsVO> getReviewList(Criteria cri);		// 리뷰 목록 보기
	
	public List<ReviewsVO> getRankList();					// 명예의 전당 목록 보기
	
	public ReviewsVO getReview(ReviewsVO vo);				// 리뷰 상세 보기
	
	public void deleteReview(ReviewsVO vo);					// 리뷰 삭제하기

	public void updateReview(ReviewsVO vo);					// 리뷰 수정하기
	
	public List<ReviewsVO> getMyReviewList(Criteria cri);	// 내 리뷰 목록 보기
	
	public int listCount() throws Exception;				// 게시물 총 갯수

} // end of interface


/*
 *	기본적인 구조라면 인터페이스를 구현한 클래스 BoardDAOImpl.java 가 필요함
 *	그 클래스를 @Repository 로 지정해야 함
 * 	@Mapper 를 사용하면 이 단계들을 뛰어넘어 사용 가능.
 * 	이름을 맞춰주어야 사용 가능함.
 * 
 */
