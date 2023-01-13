package com.example.elk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.domain.SearchVO;
import com.example.elk.document.ElasticsearchFestival;
import com.example.elk.service.SearchQueryService;
import com.example.service.SearchService;

@RestController
@RequestMapping("/api/festival")
public class ElkFestivalController {

	@Autowired
	private SearchQueryService searchQueryService;
	
	@Autowired
	private SearchService searchService;

	@GetMapping("/search")
	public ModelAndView getFesitvalSearch(SearchVO searchVO) {
		System.out.println("축제 키워드 검색 호출");
		
		List<ElasticsearchFestival> festivalList = searchQueryService.getByQuery(searchVO.getLog_word_searchword());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/searchedFestivalList");
		mv.addObject("festival", festivalList);
		mv.addObject("search_result", searchVO.getLog_word_searchword());
		searchService.saveSearchLog(searchVO);
		return mv;
	}
}