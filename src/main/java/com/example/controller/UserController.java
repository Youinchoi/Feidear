package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.UserVO;
import com.example.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userservice;

	//DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
    @RequestMapping(value = "/{url}")
    public String userJoin(@PathVariable String url) {
    System.out.println("경로:" + url);
     return "user/"+url;
    }
    
    //mypage 회원정보 띄우기
    @RequestMapping(value="/getUser")
    public void getUser(Model m, UserVO vo) {
    	UserVO result = userservice.getUser(vo);
    	m.addAttribute("user",result);
    	System.out.println("getUser controller");
    }
     
    //mypage 회원정보 변경 후 저장
    @RequestMapping(value="updateUser")
    public String updateUser(UserVO vo) {
    	userservice.updateUser(vo);
    	System.out.println("modifyMember controller");
    	return "redirect:getUser";
    }

    //mypage 회원정보 탈퇴
    @RequestMapping(value="deleteMember")
    public String deleteMember(UserVO vo) {
    	//정보 삭제 후 session logout 하고 메인페이지로 돌아가기
    	userservice.deleteUser(vo);
    	System.out.println("deleteMember controller");
    	return "index";
    }

    //mypage 비밀번호 변경 후 저장
    @RequestMapping(value="modifyPassword")
    public String modifyPassword(UserVO vo) {
    	userservice.updatePass(vo);
    	System.out.println("modifyPassword controller");
    	return "redirect:getUser";
    }
	
}
