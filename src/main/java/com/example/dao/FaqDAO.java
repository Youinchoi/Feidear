package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.FaqVO;
import com.example.domain.UserVO;

@Mapper
public interface FaqDAO {
	
	// faq 등록
	public void insertFaq(UserVO vo);
	
	// faq 상세 보기
	public List<FaqVO> getFaqList();
	
	// faq 상세 보기
	public FaqVO getFaq(FaqVO vo);
	
	//---------------------------------- 이게 뭐노 ㅠ 
	
	//회원정보 삭제
	public void deleteUser(UserVO vo);
	
	//회원정보 수정 
	public void updateUser(UserVO vo);
	
	//비밀번호 변경 
	public void updatePass(UserVO vo);
	
}


/*
 *	기본적인 구조라면 인터페이스를 구현한 클래스 BoardDAOImpl.java 가 필요함
 *	그 클래스를 @Repository 로 지정해야 함
 * 	@Mapper 를 사용하면 이 단계들을 뛰어넘어 사용 가능.
 * 	이름을 맞춰주어야 사용 가능함.
 * 
 */
