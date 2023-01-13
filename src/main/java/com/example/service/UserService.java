package com.example.service;

import java.util.List;

import com.example.domain.UserVO;
import com.example.domain.WishVO;

public interface UserService {

	// 회원가입 - 완료
	public int insertUser(UserVO vo);
	
	// 회원가입 - 아이디 중복 체크
	public int signUp_break(UserVO vo); // DB
	public int idCheck_ajax(String u_id); // ajax
	
	// 유저 로그인
	public UserVO loginUser(UserVO vo);

	// ----------------------------------------
	
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
