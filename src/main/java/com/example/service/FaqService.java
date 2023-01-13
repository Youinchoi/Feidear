package com.example.service;

import java.util.List;

import com.example.domain.FaqVO;

public interface FaqService {
	
	// faq list 가져오기
	public List<FaqVO> getFaqList();
	
	// faq 상세 보기
	public FaqVO getFaq(FaqVO vo);
	
	// faq 등록
	public FaqVO insertFaq(FaqVO vo);
	
	//Faq 변경 
	public void updateFaq(FaqVO vo);

} // end of interface