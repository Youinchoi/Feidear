package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ReviewsDAO;
import com.example.domain.Criteria;
import com.example.domain.ReviewsVO;

@Service
public class ReviewsServiceImpl implements ReviewsService {

	@Autowired
	private ReviewsDAO reviewsDAO;
	
	@Autowired
	private SqlSessionTemplate reviewSqlSession;

	// 리뷰 목록 보기
	@Override
	public List<ReviewsVO> getReviewList(Criteria cri) {
		return reviewsDAO.getReviewList(cri);
	} // end of getReviewList()
	
	// 명예의 전당 목록 보기
	@Override
	public List<ReviewsVO> getRankList() {
		List<ReviewsVO> list = reviewsDAO.getRankList();
		System.out.println("[ReivewsService] 리스트 갯수(목록보기) : "+list.size());
		return list;
	} // end of getReviewList()

	// 리뷰 상세 보기
	@Override
	public ReviewsVO getReview(ReviewsVO vo) {
		ReviewsVO list = reviewsDAO.getReview(vo);
		System.out.println("[ReviewsService] getReview(상세보기) : serviceImpl" );
		return list;
	} // end of getReview()
	
	// 리뷰 조회수 카운팅
	@Override
	public void updateView_cnt(Integer rv_no) {
		reviewsDAO.updateView_cnt(rv_no);
	}
	
	// 새 리뷰 작성하기
	@Override
	public void insertReview(ReviewsVO vo) {
		reviewsDAO.insertReview(vo);		
		System.out.println("[ReviewsService] insertReview(작성) : serviceImpl");
	} // end of insertReview()

	// 리뷰 삭제하기
	@Override
	public void deleteReview(ReviewsVO vo) {
		reviewsDAO.deleteReview(vo);
		System.out.println("[ReviewsService] deleteReview(삭제) : serviceImpl");
	} // end of deleteReview()

	// 리뷰 수정하기
	@Override
	public void updateReview(ReviewsVO vo) {
		reviewsDAO.updateReview(vo);
		System.out.println("[ReviewsService] updateReview(수정) : serviceImpl");
	} // end of updateReview()

	//My page 내 리뷰 목록 보기
	public List<ReviewsVO> getMyReviewList(Criteria cri) {
		return reviewsDAO.getMyReviewList(cri);
	}

	//게시물 총 갯수
	public int listCount() throws Exception {
		return reviewsDAO.listCount();
	}
	
	// 관리자 우측의 내가 쓴 리뷰 가져오기
	public List<ReviewsVO> getReviewList(int u_no){
		return reviewsDAO.getReviewListAdmin(u_no);
	}
	
	/* ========== index 페이지 ========== */
	// 인기글 목록 보기
	@Override
	public List<ReviewsVO> getRank3() {
		List<ReviewsVO> list = reviewsDAO.getRank3();
		System.out.println("[ReivewsService] 인기글 리스트 갯수(목록보기) : "+list.size());
		return list;
	} // end of getRank3()

} // end of class