package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.FestivalVO;
import com.example.service.FestivalService;

@Controller
@RequestMapping("/festival")
public class FestivalController {
	
	@Autowired
	private FestivalService festivalService;

	//DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
    @RequestMapping(value = "/{url}")
    public String userJoin(@PathVariable String url) {
    System.out.println("경로:" + url);
     return "user/"+url;
    }
    
    //calendar data 불러오기
    @RequestMapping("/calendar")
    public void calendar(Model m, HttpServletRequest request) {
    	FestivalVO vo = new FestivalVO();
		List<FestivalVO> calendar = null;
		try {
			calendar = festivalService.calendar();
			request.setAttribute("calList", calendar);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println("[BoardController:getBoardList] 결과 갯수 : "+calendar.size());
    }
    
 // 축제 상세페이지
    @RequestMapping(value = "/festivalDetails", method = RequestMethod.GET)
    public String viewFestival(Model m, @RequestParam("fetv_no") int fetv_no) throws Exception{
    	FestivalVO vo = festivalService.viewFestival(fetv_no);
    	System.out.println(">>>>> vo : "+vo);
    	m.addAttribute("view", vo);
    	return "/festivalDetails";
    	//return "redirect:/festivalDetails?fetv_no=" + vo.getFetv_no();
    }

    
	
}
