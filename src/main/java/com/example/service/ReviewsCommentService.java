package com.example.service;

import java.util.List;

import com.example.domain.ReviewsCommentVO;

public interface ReviewsCommentService {

	// 댓글 등록하기
	public int insertReviewReply(ReviewsCommentVO vo);

	// 댓글 수정하기
	public void updateReviewReply(ReviewsCommentVO vo);
	
	// 댓글 삭제 (댓글 번호)
	void deleteReviewReply(int rv_cmt_no);
	
	// 댓글 조회 (리뷰 번호)
	public List<ReviewsCommentVO> getReviewReply(Integer rv_no);
	
}
