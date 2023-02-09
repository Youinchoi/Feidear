package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.FestivalCommentVO;
import com.example.service.FestivalCommentService;
import com.example.service.UserService;


@RestController
public class FestivalCommentController {
	
	@Autowired
	private FestivalCommentService festivalcommentService;
	
	
		// 축제 댓글 등록
		@PostMapping("f_replies/new")
		public String insertFestivalReply(FestivalCommentVO vo, HttpSession session) {
			System.out.println("댓글 입력 : "+vo);
			int result=festivalcommentService.insertFestivalReply(vo);
			if(result==1) return "success";
			else return "fail";
		}

		// 축제 댓글 목록 조회
		@GetMapping("f_replies")
		public List<FestivalCommentVO> selectAll(Integer fetv_no){
			List<FestivalCommentVO> list = festivalcommentService.getFestivalReply(fetv_no); // 리뷰 번호로 가져오기
			return list;
		} // end of selectAll()
		
		//축제 댓글 삭제 (댓글 번호 : cmt_no)
		@PostMapping("f_deleteReply")
		public void deleteFestivalReply(int cmt_no) {
			System.out.println("컨트롤러 호출 굿");
			festivalcommentService.deleteFestivalReply(cmt_no);
		} // end of delete()

		//축제 댓글 수정
		@PostMapping("f_replies/{param}")
		public void updateFestivalReply(FestivalCommentVO vo) {
			festivalcommentService.updateFestivalReply(vo);

		} // end of update()
	

}
