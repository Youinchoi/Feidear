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
    
    // faq 목록 보기
    @RequestMapping("/faq")
    public void getFaqList(Model m) {
       //FaqVO vo = new FaqVO(); // 지금은 이 객체 역할없음
       //vo.setFaq_no(1);
    	List<FaqVO> list = faqService.getFaqList();
//       System.out.println("[Controller : getFaqList 요청] 리스트 결과 개수 : "+list.size());
       System.out.println(">>>>>> vo : "+list.get(0));
       m.addAttribute("qList", list);
    } // end of getReviewsList()
    
    
    // faq 상세 내용 띄우기
    @RequestMapping("/getFaq")
    public void getFaq(Model m, FaqVO vo) {
    	FaqVO result = faqService.getFaq(vo);
    	m.addAttribute("faq",result);
    	System.out.println("[Controller : getFaq 요청] 상세보기 : " + result.getFaq_no());
    }
     
    //----------------------------------------------- 아래 이건 뭐지? 내가 잘못 건드린건가?
    
    //mypage 회원정보 변경 후 저장
    @RequestMapping(value="updateUser")
    public String updateFaq(FaqVO vo) {
    	faqService.updateFaq(vo);
    	System.out.println("modifyMember controller");
    	return "redirect:getUser";
    }

	
}
