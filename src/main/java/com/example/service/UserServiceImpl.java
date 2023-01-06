package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.BoardDAO;
import com.example.dao.UserDAO;
import com.example.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	//로그인세션 ID값의 회원정보 MYPAGE에 출력
	public UserVO getUser(UserVO vo) {
		UserVO list=userDAO.getUser(vo);
		System.out.println("[UserService] getUser serviceimpl");
		return list;
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
	


}
