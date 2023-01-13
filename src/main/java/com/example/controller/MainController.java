package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.domain.Criteria;
import com.example.domain.EventVO;
import com.example.domain.FestivalVO;
import com.example.domain.PageMaker;
import com.example.domain.ReviewsVO;
import com.example.domain.SearchCriteria;
import com.example.service.EventService;
import com.example.service.FestivalService;

@Controller
public class MainController {

	@Autowired
	private FestivalService festivalService;
	
	@Autowired
	private EventService eventService;
	
	//DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
    @RequestMapping(value = "/{url}")
    public String userJoin(@PathVariable String url) {
    System.out.println("경로:" + url);
     return url;
    }
 	
    // 축제 정보 클릭 시 전체 목록 출력
    @RequestMapping(value = "viewFestivalList")
    public void viewFestivalList(Model m, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
    	System.out.println("경로: viewFestivalList");
    	List<FestivalVO> festivalList = festivalService.viewFestivalList(scri);
    	m.addAttribute("festivalList", festivalList);
    	// 페이징 후
    	PageMaker pageMaker = new PageMaker();
 		pageMaker.setCri(scri);
 		pageMaker.setTotalCount(festivalService.listCount(scri));
 		m.addAttribute("pageMaker", pageMaker);
    }
    
    // 축제 정보 목록에서 필터 설정 후 검색
    @RequestMapping(value = "filteredFestivalList")
    public ModelAndView filteredFestivalList(SearchCriteria scri) throws Exception{
    	System.out.println("경로: filteredFestivalList");
    	List<FestivalVO> festivalList = festivalService.filteredFestivalList(scri);
		/*
		 * System.out.println(vo.getFetv_area());
		 * System.out.println(vo.getFetv_startdate());
		 * System.out.println(vo.getFetv_enddate());
		 */
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("/viewFestivalList");
    	mv.addObject("festivalList", festivalList);
    	PageMaker pageMaker = new PageMaker();
 		pageMaker.setCri(scri);
 		pageMaker.setTotalCount(festivalService.listCount(scri));
 		mv.addObject("pageMaker", pageMaker);
    	return mv;
    }
    
    //-----------------------------------------------------------------------------------
    
    
    //이벤트 리스트 불러오기
    @RequestMapping("/event")
    public String getEventList(Model m, Criteria cri) throws Exception {
    	List<EventVO> list = eventService.getEventList(cri);
    	m.addAttribute("eventList", list);		// 리뷰 목록
    	PageMaker pageMaker = new PageMaker();
    	pageMaker.setCri(cri);
    	pageMaker.setTotalCount(eventService.listCount());
    	m.addAttribute("pageMaker", pageMaker);
    	return "event";
    } // end of getReviewsList()
 	
    //이벤트 상세 불러오기
 	@RequestMapping("/event-details")
 	public String getEvent(EventVO vo, Model m) {
 		EventVO result = eventService.getEvent(vo);
 		m.addAttribute("event", result);
 		
 		return "event-details";
 	} // end of getReviews()
 	
 	
    
    

}
