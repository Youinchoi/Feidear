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

	public void updateView_cnt(Integer rv_no);				// 리뷰 조회수 카운팅
	
	// 관리자 - 우측의 내가 쓴 리뷰 가져오기
	public List<ReviewsVO> getReviewListAdmin(int u_no);
} // end of interface

