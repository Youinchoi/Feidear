package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.SearchDAO;
import com.example.domain.FestivalVO;
import com.example.domain.SearchVO;

@Service
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	private SearchDAO searchDAO;

	// 축제 목록에서 키워드를 직접 입력하여 검색
	public void saveSearchLog(SearchVO searchVO) {
		searchDAO.saveSearchLog(searchVO);
	}
}
