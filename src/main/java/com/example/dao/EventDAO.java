package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.Criteria;
import com.example.domain.EventVO;

@Mapper
public interface EventDAO {

	public EventVO getEvent(EventVO vo);				// 이벤트 상세 보기
	
	public List<EventVO> getEventList(Criteria cri);	// 내 이벤트 목록 보기
	
	public int listCount() throws Exception;			// 게시물 총 갯수
	
	public void saveEvent(EventVO vo);					// 이벤트 저장하기
	
	public void deleteEvent(EventVO vo);				// 이벤트 삭제하기
	
	
}


/*
 *	기본적인 구조라면 인터페이스를 구현한 클래스 BoardDAOImpl.java 가 필요함
 *	그 클래스를 @Repository 로 지정해야 함
 * 	@Mapper 를 사용하면 이 단계들을 뛰어넘어 사용 가능.
 * 	이름을 맞춰주어야 사용 가능함.
 * 
 */
