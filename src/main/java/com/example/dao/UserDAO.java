package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.UserVO;
import com.example.domain.WishVO;

@Mapper
public interface UserDAO {

	// 회원 가입
	public int insertUser(UserVO vo);

	// 아이디 중복 체크
	public int signUp_break(UserVO vo); // 아이디가 중복되면, 회원가입 완료창으로 넘어갈 수 없게 함
	public int idCheck_ajax(String u_id); //ajax 아이디 중복체크

	// 로그인
	public UserVO loginUser(UserVO vo);

	// ---------------------------------
	
	//로그인세션 ID값의 회원정보 MYPAGE에 출력
	public UserVO getUser(UserVO vo);
	
	//회원정보 삭제
	public void deleteUser(UserVO vo);
	
	//회원정보 수정 
	public void updateUser(UserVO vo);
	
	//비밀번호 변경 
	public void updatePass(UserVO vo);
	
	// ---------------------------------
	
	// 위시리스트 목록
	public List<WishVO> getWishList(WishVO vo);
	
	// 위시리스트 추가
	public void addWish(WishVO vo) throws Exception;
	
	// 위시리스트 삭제
	public int deleteWish(WishVO vo);
	
	
}


/*
 *	기본적인 구조라면 인터페이스를 구현한 클래스 BoardDAOImpl.java 가 필요함
 *	그 클래스를 @Repository 로 지정해야 함
 * 	@Mapper 를 사용하면 이 단계들을 뛰어넘어 사용 가능.
 * 	이름을 맞춰주어야 사용 가능함.
 * 
 */
