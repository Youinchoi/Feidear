package com.example.service;

import com.example.domain.SearchVO;

public interface SearchService {

	// 축제 목록에서 키워드를 직접 입력하여 검색
	public void saveSearchLog(SearchVO searchVO);

}
