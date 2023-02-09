package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.FaqVO;
import com.example.service.FaqService;

@Controller
@RequestMapping("/faq")
public class FaqController {
	
	@Autowired
	private FaqService faqService;

	//DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
    @RequestMapping(value = "/{url}")
    public String faqJoin(@PathVariable String url) {
    System.out.println("경로:" + url);
     return "faq/"+url;
    } // 
    
    //----------------------------------------------- 아래 이건 뭐지? 내가 잘못 건드린건가?
    
    //mypage 회원정보 변경 후 저장
    @RequestMapping(value="updateUser")
    public String updateFaq(FaqVO vo) {
    	faqService.updateFaq(vo);
    	System.out.println("modifyMember controller");
    	return "redirect:getUser";
    }

	
}
