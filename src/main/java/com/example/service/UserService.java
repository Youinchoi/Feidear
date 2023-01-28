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

	// 위시리스트 추가
	public int addWish(WishVO vo);
	
	// 위시리스트 목록
	public List<WishVO> getWishList(UserVO vo);

	// 위시리스트 삭제
	public int deleteWish(UserVO vo);

	//-------------------------------
	// 관리자 페이지에서 회원 관리 눌렀을 때 유저 목록 가져오기
	public List<UserVO> getUserList();
	
	// 관리자 페이지에서 회원 관리 - 보기 눌렀을 때 유저 정보 가져오기
	public UserVO getUserInfo(int u_no);
	
	// 관리자 페이지에서 회원 정보 수정 - 저장 버튼 클릭 시 정보 수정
	public void updateUserSubmit(UserVO vo);

}
