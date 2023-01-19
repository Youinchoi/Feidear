package com.example.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Criteria;
import com.example.domain.PageMaker;
import com.example.domain.ReviewsVO;
import com.example.service.ReviewsService;


@Controller
@RequestMapping("/reviews")
public class ReviewsController {

	@Autowired
	private ReviewsService reviewsService;
	
	//DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
    @RequestMapping(value = "/{url}")
    public String viewPage(@PathVariable String url) {
    System.out.println("경로:" + url);
     return "reviews/"+url;
    } // 
    
    // 리뷰 등록
    @RequestMapping(value="/insertReview")
    public void insertReview(ReviewsVO vo)throws IOException {
    	System.out.println("[Controller : insertReivews 입력창]");
    } // end of writeReviews()

    // 리뷰 등록
    @RequestMapping(value="/saveReview")
    public String saveReview(ReviewsVO vo)throws IOException {
    	System.out.println("[Controller : saveReview 요청] 입력");
    	System.out.println(">>>>> file :: "+vo.getFile_name());
    	reviewsService.insertReview(vo);
    	return "redirect:/reviews/getReviewList";
    } // end of writeReviews()

    
    // 리뷰 목록 보기
    @RequestMapping("/getReviewList")
    public void getReviewList(Model m, Criteria cri) throws Exception {
        System.out.println(">>>>>>>> cri : "+cri);
    	m.addAttribute("reviewList", reviewsService.getReviewList(cri));		// 리뷰 목록
    	PageMaker pageMaker = new PageMaker();
    	pageMaker.setCri(cri);
    	pageMaker.setTotalCount(reviewsService.listCount());
    	m.addAttribute("pageMaker", pageMaker);
    	
    	List<ReviewsVO> rankList = reviewsService.getRankList();
    	m.addAttribute("rankList", rankList);			// 명예의 전당 목록
    } // end of getReviewsList()
 	
 	// 리뷰 상세 보기
 	@RequestMapping("/getReview")
 	public void getReview(ReviewsVO vo, Model m) {
 	
 		ReviewsVO result = reviewsService.getReview(vo);
 		System.out.println("[Controller : getReviews 요청] 상세보기 : "+result.getRv_no());
 		m.addAttribute("reviews", result);
 		
 		List<ReviewsVO> rankList = reviewsService.getRankList();
 		m.addAttribute("rankList", rankList);					// 명예의 전당 목록
 	} // end of getReviews()
 	
 	
 	// 리뷰 삭제
 	@RequestMapping("/deleteReview")
 	public String deleteReview(ReviewsVO vo) {
 		reviewsService.deleteReview(vo);
 		System.out.println("[Controller : deleteReviews 요청] 글 삭제: " + vo.getRv_no());
 		return "redirect:getReviewList";
 	} // end of deleteReviews()
 	
 	
 	// 리뷰 수정
 	@RequestMapping(value="updateReview")
 	public String updateReview(ReviewsVO vo) {
 		reviewsService.updateReview(vo);
 		System.out.println("[Controller : updateReview 요청] 글 수정 : " + vo.getRv_no());
 		return "redirect:getReview";
 	} // end of updateReviews()
    

}