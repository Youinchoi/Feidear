package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.Criteria;
import com.example.domain.EventVO;
import com.example.domain.FestivalVO;
import com.example.domain.MagazineVO;
import com.example.domain.PageMaker;
import com.example.domain.ReviewsVO;
import com.example.domain.SearchCriteria;
import com.example.domain.UserVO;
import com.example.domain.WishVO;
import com.example.service.EventService;
import com.example.service.FestivalService;
import com.example.service.MagazineService;
import com.example.service.ReviewsService;
import com.example.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	EventService eventService;

	@Autowired
	MagazineService magazineService;

	@Autowired
	FestivalService festivalService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	ReviewsService reviewService;
	

	// DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
	@RequestMapping(value = "/{url}")
	public String userJoin(@PathVariable String url) {
		System.out.println("경로: " + url);
		return "admin/" + url;
	}

//----------------------------FESTIVAL----------------------------------

	// 축제 목록 불러오기
	@RequestMapping(value = "manageFestivals")
	public void manageFestivals(Model m, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		System.out.println("경로: manageFestivals");
		List<FestivalVO> festivalList = festivalService.viewFestivalList(scri);
		m.addAttribute("festivalList", festivalList);
		// 페이징 후
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(festivalService.listCount(scri));
		m.addAttribute("pageMaker", pageMaker);
	}

	// 축제 목록에서 클릭 시 축제 정보 가져오기
	@RequestMapping(value = "updateFestival", method = RequestMethod.GET)
	public String viewFestival(Model m, @RequestParam("fetv_no") int fetv_no) throws Exception {
		FestivalVO vo = festivalService.viewFestival(fetv_no);
		System.out.println(">>>>> vo : " + vo);
		m.addAttribute("view", vo);
		return "admin/updateFestival";
	}
	
	// 축제 등록에서 submit 
	@RequestMapping(value = "insertFestivalSubmit")
	public String insertFestivalSubmit(FestivalVO vo) {
		System.out.println(vo);

		return null;
	}
	

//----------------------------FESTIVAL END -----------------------------    
	
// ----------------------------USER-------------------------------------

	// 관리자 페이지에서 회원 관리 눌렀을 때 유저 목록 가져오기
	@RequestMapping(value="manageUsers")
	public void manageUsers(Model m) {
		System.out.println("경로: manageUsers");
		List<UserVO> userList = userService.getUserList();
		m.addAttribute("userList", userList);
		}
	
	// 관리자 페이지에서 회원 관리 - 보기 눌렀을 때 유저 정보 가져오기
	@RequestMapping(value="updateUser", method = RequestMethod.GET)
	public void getUserInfo(Model m, @RequestParam("u_no") int u_no) {
		System.out.println("경로: updateUser");
		// 좌측의 회원 정보 가져오기
		UserVO userVO = userService.getUserInfo(u_no);
		m.addAttribute("userInfo", userVO);
		// 우측의 찜 목록 가져오기
		List<WishVO> wishList = userService.getWishList(userVO);
		m.addAttribute("wishList", wishList);
		// 우측의 내가 쓴 리뷰 가져오기
		List<ReviewsVO> reviewList = reviewService.getReviewList(u_no);
		m.addAttribute("reviewList", reviewList);
		
	}
	
	// 관리자 페이지에서 회원 정보 수정 - 저장 버튼 클릭 시 정보 수정
	@RequestMapping(value = "updateUserSubmit")
	public String updateUserSubmit(UserVO vo) {
		userService.updateUserSubmit(vo);
		return "redirect:/admin/manageUsers";
	}

// ----------------------------USER END-------------------------------------

//----------------------------EVENT-------------------------------------
	// 관리자 페이지에서 event 글 등록하기
	@RequestMapping(value = "saveEvent")
	public String saveEvent(EventVO vo) {
		eventService.saveEvent(vo);
		return "redirect:/admin/eventAdmin";
	}

	// 관리자 페이지에서 event 글 삭제하기
	@RequestMapping(value = "deleteEvent")
	public String deleteEvent(EventVO vo) {
		eventService.deleteEvent(vo);
		return "redirect:/admin/eventAdmin";
	}

	// 이벤트 목록 보기
	@RequestMapping("/eventAdmin")
	public String getEventList(Model m, Criteria cri) throws Exception {
		// System.out.println(">>>>>>>> cri : "+cri);
		m.addAttribute("eventList", eventService.getEventList(cri)); // 리뷰 목록
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(eventService.listCount());
		m.addAttribute("pageMaker", pageMaker);
		return "/admin/eventAdmin";
	} // end of getEventList()

//----------------------------EVENT END-------------------------------------

//----------------------------MAGAZINE-------------------------------------
	// 관리자 페이지에서 MAGAZINE 글 등록하기
	@RequestMapping(value = "saveMagazine")
	public String saveMagazine(MagazineVO vo) {
		magazineService.saveMagazine(vo);
		return "redirect:/admin/communityAdmin";
	}

	// 관리자 페이지에서 MAGAZINE 글 삭제하기
	@RequestMapping(value = "deleteMagazine")
	public String deleteMagazine(MagazineVO vo) {
		magazineService.deleteMagazine(vo);
		return "redirect:/admin/communityAdmin";
	}

	// MAGAZINE 목록 보기
	@RequestMapping("/communityAdmin")
	public String getMagazineList(Model m, Criteria cri) throws Exception {
		// System.out.println(">>>>>>>> cri : "+cri);
		m.addAttribute("magazineList", magazineService.getMagazineList(cri)); // 리뷰 목록
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(magazineService.listCount());
		m.addAttribute("pageMaker", pageMaker);
		return "/admin/communityAdmin";
	} // end of getEventList()

//----------------------------MAGAZINE END-------------------------------------

}
