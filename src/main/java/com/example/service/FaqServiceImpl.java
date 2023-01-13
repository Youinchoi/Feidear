package com.example.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.FaqDAO;
import com.example.domain.FaqVO;

@Service
public class FaqServiceImpl implements FaqService {

	@Autowired
	private FaqDAO faqDAO;

	@Autowired
	private SqlSessionTemplate faqSqlSession;
	
	// faq 목록 보기
	@Override
	public List<FaqVO> getFaqList() {
		List<FaqVO> list = faqDAO.getFaqList();
		System.out.println("[FaqService] getFaqList(목록보기) : serviceImpl");
		
		return list ;
	} // end of getFaqList()
	
	// faq 상세보기
	@Override
	public FaqVO getFaq(FaqVO vo) {
		FaqVO list = faqDAO.getFaq(vo);
		System.out.println("[FaqService] getFaqList(상세보기) : serviceImpl");
		return list;
	} // end of getFaq()
	
	// faq 등록하기
	@Override
	public FaqVO insertFaq(FaqVO vo) {
		return null;
	}

	
	// faq 수정하기
	@Override
	public void updateFaq(FaqVO vo) {
		
	}



	
} // end of faqServiceImpl