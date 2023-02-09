package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.FestivalCommentDAO;
import com.example.domain.FestivalCommentVO;

@Service
public class FestivalCommentServiceImpl implements FestivalCommentService{
	
	@Autowired
	private FestivalCommentDAO festivalcommentDAO;
	
	
	//댓글 등록
	@Override
	public int insertFestivalReply(FestivalCommentVO vo) {
		return festivalcommentDAO.insertFestivalReply(vo);
	}

	//댓글 수정
	@Override
	public void updateFestivalReply(FestivalCommentVO vo) {
		festivalcommentDAO.updateFestivalReply(vo);
	}

	//댓글 삭제
	@Override
	public void deleteFestivalReply(int cmt_no) {
		festivalcommentDAO.deleteFestivalReply(cmt_no);
	}

	//댓글 조회
	@Override
	public List<FestivalCommentVO> getFestivalReply(Integer cmt_no) {
		return festivalcommentDAO.getFestivalReply(cmt_no);
	}

}
