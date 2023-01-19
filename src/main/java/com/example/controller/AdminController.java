package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Criteria;
import com.example.domain.EventVO;
import com.example.domain.MagazineVO;
import com.example.domain.PageMaker;
import com.example.service.EventService;
import com.example.service.MagazineService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	EventService eventService;
	
	@Autowired
	MagazineService magazineService;
		

	//DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
    @RequestMapping(value = "/{url}")
    public String userJoin(@PathVariable String url) {
    System.out.println("경로:" + url);
     return "admin/"+url;
    }

//----------------------------EVENT-------------------------------------
   //관리자 페이지에서 event 글 등록하기
    @RequestMapping(value = "saveEvent")
    public String saveEvent(EventVO vo) {
    	eventService.saveEvent(vo);
    	return "redirect:/admin/eventAdmin";
    }

    //관리자 페이지에서 event 글 삭제하기
    @RequestMapping(value = "deleteEvent")
    public String deleteEvent(EventVO vo) {
    	eventService.deleteEvent(vo);
    	return "redirect:/admin/eventAdmin";
    }
    
    //이벤트 목록 보기
    @RequestMapping("/eventAdmin")
    public String getEventList(Model m, Criteria cri) throws Exception {
        //System.out.println(">>>>>>>> cri : "+cri);
    	m.addAttribute("eventList", eventService.getEventList(cri));		// 리뷰 목록
    	PageMaker pageMaker = new PageMaker();
    	pageMaker.setCri(cri);
    	pageMaker.setTotalCount(eventService.listCount());
    	m.addAttribute("pageMaker", pageMaker);
    	return "/admin/eventAdmin";
    } // end of getEventList()
    
//----------------------------EVENT END-------------------------------------


//----------------------------MAGAZINE-------------------------------------
    //관리자 페이지에서 MAGAZINE 글 등록하기
    @RequestMapping(value = "saveMagazine")
    public String saveMagazine(MagazineVO vo) {
    	magazineService.saveMagazine(vo);
    	return "redirect:/admin/communityAdmin";
    }

    //관리자 페이지에서 MAGAZINE 글 삭제하기
    @RequestMapping(value = "deleteMagazine")
    public String deleteMagazine(MagazineVO vo) {
    	magazineService.deleteMagazine(vo);
    	return "redirect:/admin/communityAdmin";
    }

    //MAGAZINE 목록 보기
    @RequestMapping("/communityAdmin")
    public String getMagazineList(Model m, Criteria cri) throws Exception {
    	//System.out.println(">>>>>>>> cri : "+cri);
    	m.addAttribute("magazineList", magazineService.getMagazineList(cri));		// 리뷰 목록
    	PageMaker pageMaker = new PageMaker();
    	pageMaker.setCri(cri);
    	pageMaker.setTotalCount(magazineService.listCount());
    	m.addAttribute("pageMaker", pageMaker);
    	return "/admin/communityAdmin";
    } // end of getEventList()
    
//----------------------------MAGAZINE END-------------------------------------
    
	
}
