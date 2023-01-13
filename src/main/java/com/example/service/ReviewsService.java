package com.example.service;

import java.util.List;

import com.example.domain.Criteria;
import com.example.domain.ReviewsVO;

public interface ReviewsService {
	
	// 리뷰 목록 가져오기(getReviewList)
	public List<ReviewsVO> getReviewList(Criteria cri);
	
	// 명예의 전당 목록 가져오기(getRankList)
	public List<ReviewsVO> getRankList();
	
	// 새 리뷰 작성하기(insertReview)
	public void insertReview(ReviewsVO vo);
	
	// 리뷰 상세 보기(getReview)
	public ReviewsVO getReview(ReviewsVO vo);
	
	// 리뷰 삭제하기(deleteReview)
	public void deleteReview(ReviewsVO vo);
	
	// 리뷰 수정하기(updateReview)
	public void updateReview(ReviewsVO vo);
	
	public List<ReviewsVO> getMyReviewList(Criteria cri);	// 내 리뷰 목록 보기
	
	public int listCount() throws Exception;				// 게시물 총 갯수
	
} // end of interface