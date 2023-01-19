package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.ReviewsCommentVO;

@Mapper
public interface ReviewsCommentDAO {
	
	// 댓글 입력
	int insertReviewReply(ReviewsCommentVO vo);
	
	// 댓글 수정
	void updateReviewReply(ReviewsCommentVO vo);

	// 댓글 삭제 (댓글 번호)
	void deleteReviewReply(Integer rv_cmt_no);
	
	// 댓글 조회 (리뷰 번호)
	public List<ReviewsCommentVO> getReviewReply(Integer rv_no);

}
