package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.UserVO;
import com.example.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
/*
 * 
		
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		
		return "board/"+step;
	}
	
	//글 목록 가져오기
	@RequestMapping("/getBoardList")
	public void getBoardList(Model m) {
		UserVO vo = new UserVO();		//지금은 이 객체 역할 없음
		List<UserVO> list = boardService.getBoardList(vo);
		System.out.println("[BoardController:getBoardList] 결과 갯수 : "+list.size());
		
		m.addAttribute("boardList",list);
	}
	
	//선택한 게시글 가져오기
	@RequestMapping("/getBoard2")
	public void getBoard(Model m, UserVO vo) {
		UserVO list = boardService.getBoard(vo);
		System.out.println("[BoardController:getBoard] 글 번호 : "+list.getSeq());
		
		m.addAttribute("board",list);
	}

	//새글 등록하기
	@RequestMapping("/saveBoard")
	public String saveBoard(UserVO vo) {
		boardService.saveBoard(vo);
		System.out.println("[BoardController:saveBoard] 글 등록 완료");
		
		return "redirect:getBoardList";
	}
	
	//글 수정
	@RequestMapping("/updateBoard")
	public String updateBoard(UserVO vo) {
		boardService.updateBoard(vo);
		System.out.println("[BoardController:updateBoard] 글 수정 완료");
		
		return "redirect:getBoard?seq="+vo.getSeq();
	}	
	
	//글 삭제
	@RequestMapping("/deleteBoard")
	public String deleteBoard(UserVO vo) {
		boardService.deleteBoard(vo);
		System.out.println("[BoardController:deleteBoard] 글 삭제 완료");
		
		return "redirect:getBoardList";
	}
	
 */
	
}
