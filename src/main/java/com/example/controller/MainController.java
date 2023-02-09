package com.example.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.domain.Criteria;
import com.example.domain.EventVO;
import com.example.domain.FestivalVO;
import com.example.domain.MagazineVO;
import com.example.domain.NaverLoginBO;
import com.example.domain.PageMaker;
import com.example.domain.ReviewsVO;
import com.example.domain.SearchCriteria;
import com.example.service.EventService;
import com.example.service.FestivalService;
import com.example.service.MagazineService;
import com.example.service.ReviewsService;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class MainController {

	@Autowired
	private FestivalService festivalService;
	
	@Autowired
	private EventService eventService;
	
	@Autowired
	private MagazineService magazineService;
	
	@Autowired
	private ReviewsService reviewService;
	
   @Autowired
   private NaverLoginBO naverLoginBO;
   private String apiResult = null;
	
	//DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
    @RequestMapping(value = "/{url}")
    public String userJoin(@PathVariable String url) {
    System.out.println("경로:" + url);
     return url;
    }
    
    //------------------------------------------index--------------------------------------------------
    @RequestMapping(value = "/index")
    public void index(MagazineVO vo, Model m, HttpSession session) throws Exception {
    	List<MagazineVO> list = magazineService.getMagazine3();
    	
    	//<div>로 되어있는 content 맨 앞 줄만 잘라서 보여주기
        for (MagazineVO vo2 : list) {
            String cont = vo2.getMgz_content();
            int idx = cont.indexOf("<div>");
            if (idx != -1) {
               cont = cont.substring(0, idx);             
               vo2.setMgz_content(cont);
            }
         }   	
    	m.addAttribute("mm",list);
    	
    	//---------- (인기글) ----------
        List<ReviewsVO> list2 = reviewService.getRank3();
        
       // System.out.println("getRank3: "+list2);
        //<div>로 되어있는 content 맨 앞 줄만 잘라서 보여주기
         for (ReviewsVO rv_vo : list2) {
             String cont = rv_vo.getRv_content();   // 리뷰 내용 저장하기
             
             List<Integer> indexList = new ArrayList<Integer> ();
            int idx = cont.indexOf("<div>");
            
            while(idx != -1) {
               indexList.add(idx);
               idx = cont.indexOf("<div>", idx+5);
            }
            
            if (indexList.size() > 3 || idx != -1) {
               //System.out.println(">> div 위치 : "+indexList.get(3));
               cont = cont.substring(0, indexList.get(3));             
               rv_vo.setRv_content(cont);
               //System.out.println(">> 출력 내용 : "+cont);
            }
            
          }     
        m.addAttribute("getRank3",list2);
        //System.out.println("index 실행=>인기글 보여주세요");
    	
        /*
        //네이버 로그인
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        //System.out.println("naverAuthUrl:"+naverAuthUrl);
        m.addAttribute("url",naverAuthUrl);
    	*/
        
    	System.out.println("index 실행");
    	
    }
    
    
    //------------------------------------------index--------------------------------------------------
 	
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
    
    //--------------------------------------event start---------------------------------------------
        
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
 	//--------------------------------------event end---------------------------------------------
 	
 	//------------------------------------magazine 시작----------------------------------------------- 	
 	//매거진 리스트 불러오기
 	@RequestMapping("/magazine")
 	public String getMagazineList(Model m, Criteria cri) throws Exception {
 		List<MagazineVO> list = magazineService.getMagazineList(cri);
 		m.addAttribute("mgzList", list);		// 리뷰 목록
 		PageMaker pageMaker = new PageMaker();
 		pageMaker.setCri(cri);
 		pageMaker.setTotalCount(magazineService.listCount());
 		
    	//<div>로 되어있는 content 맨 앞 줄만 잘라서 보여주기
        for (MagazineVO vo2 : list) {
            String cont = vo2.getMgz_content();
            int idx = cont.indexOf("<div>");
            if (idx != -1) {
               cont = cont.substring(0, idx);             
               vo2.setMgz_content(cont);
            }
         } 
	
 		m.addAttribute("pageMaker", pageMaker);
 		return "magazine";
 	} // end of getReviewsList()
 	
 	//매거진 상세 불러오기
 	@RequestMapping("/magazine-details")
 	public String getMagazine(MagazineVO vo, Model m) {
 		MagazineVO result = magazineService.getMagazine(vo);
 		m.addAttribute("mgz", result);
 		
 		return "magazine-details";
 	} // end of getReviews()
 	//------------------------------------magazine 끝-----------------------------------------------
 	
 	//------------------------------------서포터즈 시작-----------------------------------------------
 	
 	//가장 최신 매거진 3개 가져오기
 	@RequestMapping("/supporters")
 	public String getMagazine3(MagazineVO vo, Model m) throws Exception {
 		List<MagazineVO> list = magazineService.getMagazine3();
 		System.out.println(">>> list : "+list);
 		m.addAttribute("mgz3", list);		// 매거진 3개 목록
 		return "/supporters";
 	}
 	
 	//------------------------------------서포터즈 끝-----------------------------------------------
    
    

}
