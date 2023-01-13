package com.example.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dao.UserDAO;
import com.example.domain.Criteria;
import com.example.domain.PageMaker;
import com.example.domain.UserVO;
import com.example.domain.WishVO;
import com.example.service.ReviewsService;
import com.example.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userservice;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private ReviewsService Reviewsservice;

	// DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
	@RequestMapping(value = "/{url}")
	public String userJoin(@PathVariable String url) {
		System.out.println("경로:" + url);
		return "user/" + url;
	}

	// 회원가입
	@PostMapping("insertUser")
	public String insertCustomer(UserVO vo, HttpSession session, HttpServletRequest request) throws IOException {
		// 중복 아이디면 submit 버튼 눌러도 회원가입 불가능
		if (userservice.signUp_break(vo) > 0) {
			return "redirect:/sign-up";
			// return "user/insertUser_FAIL";
		}
		int insertResult = userservice.insertUser(vo);
		System.out.println("유저 등록완료::" + insertResult);
		request.setAttribute("ok", insertResult);
		return "user/insertUserFin";
	}

	// 아이디 중복 체크 (ajax)
	@RequestMapping(value = "idcheck.action", method = { RequestMethod.GET })
	@ResponseBody
	public int idCheck_ajax(String u_id) {
		System.out.println(u_id);
		return userservice.idCheck_ajax(u_id);
	}

	// 로그인
	@RequestMapping(value = "/loginUser")
	public String loginUser(UserVO vo, HttpSession session, Model m) {
		UserVO loginResult = userservice.loginUser(vo);
		if (loginResult != null) { // 로그인 성공
			session.setAttribute("u_no", loginResult.getU_no());
			session.setAttribute("u_id", loginResult.getU_id());
			System.out.println("로그인 성공");
			return "redirect:/index";
		} else {
			m.addAttribute("feidear", 5);
			System.out.println("로그인 실패");
			return "/index";
		}
	}

	// 로그아웃
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Model m) {
		HttpSession session = request.getSession(true);
		session.invalidate();
		System.out.println("로그아웃");
		return "redirect:/index";
	}

	// 네이버 로그인
	// https://cobook.tistory.com/31

	// -----------------------MY PAGE-------------------------------

	// mypage 회원정보 띄우기
	@RequestMapping(value="/getUser")
    public void getUser(Model m, Model m2, UserVO vo, Criteria cri, HttpSession session) throws Exception {
       UserVO result = userservice.getUser(vo);
       m.addAttribute("user",result);

	// my page에 축제일기 리뷰 불러오기
    //session의 u_no 받아와 저장
    int uno = (int) session.getAttribute("u_no");
    //criteria에 변수 만들어서 저장한 곳에 uno값 set 하기
    cri.setU_no(uno);
    //set 한 채로 cri 보내기
    m2.addAttribute("getReviewList", Reviewsservice.getMyReviewList(cri));
	PageMaker pageMaker = new PageMaker();
	pageMaker.setCri(cri);
	pageMaker.setTotalCount(Reviewsservice.listCount());
	m2.addAttribute("pageMaker", pageMaker);
	System.out.println("getUser controller");
	}

	// mypage 회원정보 탈퇴
	@RequestMapping(value = "deleteMember")
	public String deleteMember(UserVO vo, HttpSession session) {
		// 정보 삭제 후 session logout 하고 메인페이지로 돌아가기
		userservice.deleteUser(vo);
		// 로그인 되어있던 세션을 끊고
		session.invalidate();
		// 메인으로 돌아감
		System.out.println("deleteMember controller");
		return "redirect:/index";
	}

	// mypage 비밀번호 변경 후 저장
	@RequestMapping(value = "modifyPassword")
	public String modifyPassword(UserVO vo) {
		userservice.updatePass(vo);
		System.out.println("modifyPassword controller");
		return "redirect:/user/getUser?u_no=" + vo.getU_no();
	}

	// -----------------------------------------------------------
	
		// 위시리스트 추가
		@ResponseBody
		@RequestMapping(value = "addWish", method = RequestMethod.POST)
		public void addWish(WishVO wishvo, HttpSession session) throws Exception {
			UserVO uservo = (UserVO)session.getAttribute("u_no");
			wishvo.setU_no(uservo.getU_no());
			userservice.addWish(wishvo);
		}
		
		// 위시리스트 삭제
		@RequestMapping(value = "deleteWish")
		public String deleteWish(WishVO vo) {
			userservice.deleteWish(vo);
			return "redirect:/user/getUser?u_no=" + vo.getWish_no();
		}

}
