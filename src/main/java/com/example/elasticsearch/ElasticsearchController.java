package com.example.elasticsearch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.domain.SearchVO;
import com.example.service.SearchService;

@RestController
@RequestMapping("/api/festival")
public class ElasticsearchController {

	// 엘라스틱서치의 서비스
	@Autowired
	private ElasticsearchService elasticsearchService;
	
	// 검색어와 유저 정보를 저장하는 서비스
	@Autowired
	private SearchService searchService;

	@GetMapping("/search")
	public ModelAndView getFesitvalSearch(SearchVO searchVO) {
		System.out.println("축제 키워드 검색 호출");
		
		// 검색어를 입력매개변수로 넘겨 검색한 결과를 festivalList에 저장
		List<ElasticsearchVO> festivalList = elasticsearchService.getByQuery(searchVO.getLog_word_searchword());
		ModelAndView mv = new ModelAndView();
		// 검색 결과를 보여 줄 페이지명
		mv.setViewName("/searchedFestivalList");
		// 검색 결과를 담을 변수명
		mv.addObject("festival", festivalList);
		// 입력한 검색어를 화면에 출력하기 위해 ModelAndView에 저장
		mv.addObject("search_result", searchVO.getLog_word_searchword());
		// 검색어와 유저 정보를 DB에 저장하는 메서드
		searchService.saveSearchLog(searchVO);
		return mv;
	}
}