package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.ReviewsCommentVO;
import com.example.service.ReviewsCommentService;
import com.example.service.UserService;

@RestController
public class ReviewsCommentController {
	
	@Autowired
	private ReviewsCommentService reveiwscommentService;
	
	@Autowired
	private UserService userService;
	
	// 리뷰 댓글 등록
	@PostMapping("replies/new")
	public String insertReviewReply(ReviewsCommentVO vo) {
		System.out.println("댓글 입력 : "+vo);
		int result=reveiwscommentService.insertReviewReply(vo);
		if(result==1) return "success";
		else return "fail";
	}

	// 리뷰 댓글 목록 조회
	@GetMapping("replies")
	public List<ReviewsCommentVO> selectAll(Integer rv_no){
		List<ReviewsCommentVO> list = reveiwscommentService.getReviewReply(rv_no); // 리뷰 번호로 가져오기
//		System.out.println("list.size()" + list.size());
		for (ReviewsCommentVO vo : list) {
			System.out.println(">>> "+vo);
		}
		return list;
	} // end of selectAll()
	
	//리뷰 댓글 삭제 (댓글 번호 : rv_cmt_no)
	@PostMapping("deleteReply")
	public void deleteReply(int rv_cmt_no) {
		System.out.println("컨트롤러 호출 굿");
		reveiwscommentService.deleteReviewReply(rv_cmt_no);
	} // end of delete()

	//리뷰 댓글 수정
	@PostMapping("replies/{param}")
	public void update(ReviewsCommentVO vo) {
		System.out.println(vo);
		reveiwscommentService.updateReviewReply(vo);
	} // end of update()
	
}
