package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	//DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
    @RequestMapping(value = "/{url}")
    public String userJoin(@PathVariable String url) {
    System.out.println("경로:" + url);
     return url;
    }
    
    //mypage 회원정보 변경 후 저장
    @RequestMapping(value="modifyMember")
    public String modifyMember() {
    	return "user-profile";
    }

    //mypage 회원정보 탈퇴
    @RequestMapping(value="deleteMember")
    public String deleteMember() {
    	//정보 삭제 후 session logout 하고 메인페이지로 돌아가기
    	return "user-profile";
    }

    //mypage 비밀번호 변경 후 저장
    @RequestMapping(value="modifyPassword")
    public String modifyPassword() {
    	return "user-profile";
    }
    
    //calendar data 불러오기
    @RequestMapping(value="calendar")
    public String calendarList() {
    	System.out.println("캘린더 불러오기 완료");
    	return "calendar";
    }
    
    
	
}
