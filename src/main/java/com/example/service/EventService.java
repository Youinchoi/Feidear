package com.example.service;

import java.util.List;

import com.example.domain.Criteria;
import com.example.domain.EventVO;

public interface EventService {

	public EventVO getEvent(EventVO vo);				// 리뷰 상세 보기
	
	public List<EventVO> getEventList(Criteria cri);	// 내 리뷰 목록 보기
	
	public int listCount() throws Exception;			// 게시물 총 갯수
	
	public void saveEvent(EventVO vo);					// 이벤트 저장하기
	
	public void deleteEvent(EventVO vo);				// 이벤트 삭제하기
	

}
