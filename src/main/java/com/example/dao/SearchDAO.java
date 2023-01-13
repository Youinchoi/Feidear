package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.SearchVO;

@Mapper
public interface SearchDAO {
	
	public void saveSearchLog(SearchVO searchVO);
	
}


/*
 *	기본적인 구조라면 인터페이스를 구현한 클래스 BoardDAOImpl.java 가 필요함
 *	그 클래스를 @Repository 로 지정해야 함
 * 	@Mapper 를 사용하면 이 단계들을 뛰어넘어 사용 가능.
 * 	이름을 맞춰주어야 사용 가능함.
 * 
 */
