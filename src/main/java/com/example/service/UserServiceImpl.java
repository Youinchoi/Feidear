package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserDAO;
import com.example.domain.UserVO;
import com.example.domain.WishVO;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserDAO userDAO;

	@Autowired
	private SqlSessionTemplate template;
	@Autowired
	private SqlSessionTemplate userSqlSession;


	// 회원가입
	@Override
	public int insertUser(UserVO vo) {
		return userDAO.insertUser(vo);
	}

	// 아이디 중복체크 (회원가입)
	@Override
	public int signUp_break(UserVO vo) {
		return userDAO.signUp_break(vo);
	}
	
	// 아이디 중복체크 (ajax)
	public int idCheck_ajax(String id) {
        return userDAO.idCheck_ajax(id);
    }
	
	// 유저 로그인
	@Override
	public UserVO loginUser(UserVO vo) {
		return userDAO.loginUser(vo);
	}
	
	
	// ------------------------------------------------------------

	//로그인세션 ID값의 회원정보 MYPAGE에 출력
	public UserVO getUser(UserVO vo) {
		UserVO userVO=userDAO.getUser(vo);
		System.out.println("[UserService] getUser serviceimpl");
		return userVO;
	}

	//회원정보 삭제
	public void deleteUser(UserVO vo) {
		userDAO.deleteUser(vo);
		System.out.println("[UserService] deleteUser serviceimpl");
	}

	//회원정보 수정
	public void updateUser(UserVO vo) {
		userDAO.updateUser(vo);
		System.out.println("[UserService] updateUser serviceimpl");
	}

	//비밀번호 변경
	public void updatePass(UserVO vo) {
		userDAO.updatePass(vo);
		System.out.println("[UserService] updatePass serviceimpl");
	}

	// ------------------------------------------------------------
	
	// 위시리스트 목록
	public List<WishVO> getWishList(UserVO vo) {
	      return userDAO.getWishList(vo);
	   }

	// 위시리스트 삭제
	public int deleteWish(WishVO vo) {
	      return userDAO.deleteWish(vo);
	   }

	// 위시리스트 추가
	public int addWish(WishVO vo) {
      if(userDAO.checkWish(vo) == 1) {
    	  System.out.println("중복 있음");
    	  return 10;}
      else return userDAO.addWish(vo);
   }

//-----------------

	// 관리자 페이지에서 회원 관리 눌렀을 때 유저 목록 가져오기
	public List<UserVO> getUserList(){
		return userDAO.getUserList();
	}
	
	// 관리자 페이지에서 회원 관리 - 보기 눌렀을 때 유저 정보 가져오기
	public UserVO getUserInfo(int u_no) {
		return userDAO.getUserInfo(u_no);
	}
	
	// 관리자 페이지에서 회원 정보 수정 - 저장 버튼 클릭 시 정보 수정
	public void updateUserSubmit(UserVO vo) {
		userDAO.updateUserSubmit(vo);
	}
	


}
