package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.FestivalCommentVO;

@Mapper
public interface FestivalCommentDAO {

		// 댓글 입력
		int insertFestivalReply(FestivalCommentVO vo);
		
		// 댓글 수정
		void updateFestivalReply(FestivalCommentVO vo);

		// 댓글 삭제 (댓글 번호)
		void deleteFestivalReply(Integer cmt_no);
		
		// 댓글 조회 (리뷰 번호)
		public List<FestivalCommentVO> getFestivalReply(Integer fetv_no);
		
}
