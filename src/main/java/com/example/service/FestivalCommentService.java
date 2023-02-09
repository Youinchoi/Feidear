package com.example.service;

import java.util.List;

import com.example.domain.FestivalCommentVO;

public interface FestivalCommentService {

		// 댓글 등록하기
		public int insertFestivalReply(FestivalCommentVO vo);

		// 댓글 수정하기
		public void updateFestivalReply(FestivalCommentVO vo);
		
		// 댓글 삭제 (댓글 번호)
		void deleteFestivalReply(int cmt_no);
		
		// 댓글 목록 조회 (축제 번호)
		public List<FestivalCommentVO> getFestivalReply(Integer fetv_no);
	
}
