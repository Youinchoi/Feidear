package com.example.service;

import java.util.List;

import com.example.domain.UserVO;

public interface BoardService {
	public List<UserVO> getBoardList(UserVO vo);
	
	public UserVO getBoard(UserVO vo);

	public void saveBoard(UserVO vo);

	public void deleteBoard(UserVO vo);

	public void updateBoard(UserVO vo);

}
