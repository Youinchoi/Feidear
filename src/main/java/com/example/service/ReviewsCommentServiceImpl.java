package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ReviewsCommentDAO;
import com.example.domain.ReviewsCommentVO;

@Service
public class ReviewsCommentServiceImpl implements ReviewsCommentService{

	@Autowired
	private ReviewsCommentDAO reviewscommentDAO;
	
	   //댓글 등록
	   @Override
	   public int insertReviewReply(ReviewsCommentVO vo) {
	      return reviewscommentDAO.insertReviewReply(vo);
	   }
	   
	   //댓글 수정
	   @Override
	   public void updateReviewReply(ReviewsCommentVO vo) {
		   reviewscommentDAO.updateReviewReply(vo);
	   }
	   
	   //댓글 삭제
	   @Override
	   public void deleteReviewReply(int rv_cmt_no) {
		   reviewscommentDAO.deleteReviewReply(rv_cmt_no);
	   }
	   
	   //댓글 조회
	   @Override
	   public List<ReviewsCommentVO> getReviewReply(Integer rv_cmt_no) {
	      return reviewscommentDAO.getReviewReply(rv_cmt_no);
	   }
}
