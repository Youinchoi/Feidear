package com.example.elasticsearch;

import java.util.ArrayList;

import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class ElasticsearchService {

	private static ObjectMapper MAPPER = new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	private static Logger LOG = LoggerFactory.getLogger(ElasticsearchService.class);

	@Autowired
	private RestHighLevelClient client;

	public ArrayList<ElasticsearchVO> getByQuery(String query) {
		try {
			// 검색 작업을 수행하기 위해 SearchRequest 객체 생성(조회하려는 인덱스를 지정해야 한다 - 미지정 시 전체 인덱스를 대상으로 조회)
			SearchRequest request = new SearchRequest("feidear_festival_list"); // 인덱스명
			
			// SearchRequest에 넣을 쿼리 소스를 만들기 위한 소스 빌더
			SearchSourceBuilder ssb = new SearchSourceBuilder();
			
			// SearchSourceBuilder.query 메서드의 입력매개변수는 QueryBuilder(종류 고르기)
			ssb.query(QueryBuilders
					// 여러 개의 필드를 통해 검색하기 위해 multiMatchQuery 선택
					// .multiMatchQuery(검색어, "필드명1", "필드명2", "필드명3", "필드명4"...)
					.multiMatchQuery(query, "fetv_name", "fetv_short", "fetv_info", "fetv_addr", "fetv_place",
							"fetv_host", "fetv_fee", "fetv_tag", "fetv_area")
					//  .field("필드명", 가중치).field("필드명", 가중치)... 
					.field("fetv_name", 4).field("fetv_tag", 3).field("fetv_info", 2)).size(100);
					// .size(출력할 도큐먼트 개수) - 미입력 시 10 개 추출
			request.source(ssb);
			
			// client로 search 명령을 실행하면 response 객체를 리턴
			SearchResponse documentFields = client.search(request, RequestOptions.DEFAULT);
			
			// 만일 search 명령의 반환값이 없다면
			// getByQuery 메서드의 최종 리턴값인 ArrayList로 null을 리턴하고 메서드 종료
			if (documentFields == null) { return null; }
			
			// hits는 Elasticsearch의 검색 결과
			// Resoponse에서 검색 결과들을 받아 온다
			SearchHits hits = documentFields.getHits();
			// SearchHits는 여러 개의 검색 결과 덩어리 -> for문을 돌리기 위해 검색 결과를 리스트 형태로 담는다
			SearchHit[] searchHits = hits.getHits();
			
			/*
			 * Elasticsearch의 검색 결과는 JSON 형태이다
			 * jsp로 화면에 출력하려면 자바의 변수로 변환해 주어야 한다
			 *
			 * 	{이름: 정지원,
			 * 	 나이: 28,
			 * 	 신분: 개발 노비}
			 * 
			 * ->	String 이름 = 정지원;
			 * 		int 나이 = 28;
			 * 		String 신분 = 개발 노비;
			 */
			// 변환한 값을 담을 ArrayList 생성(컨트롤러로 반환할 최종 반환값)
			ArrayList<ElasticsearchVO> resultList = new ArrayList<>();
			// searchHits는 리스트형이므로 하나씩 꺼내서 resultList에 저장
			for (SearchHit hit : searchHits) {
				// readValue(String content, Class<T> valueType): JSON을 자바의 변수로 바꾸어 주는 메서드
				// ElasticsearchVO의 각 변수에 검색 결과를 입력
				// 이때 JSON의 필드명과 검색 결과를 담을 Class의 변수명이 일치해야 한다
				ElasticsearchVO ElasticsearchFestival = MAPPER.readValue(hit.getSourceAsString(),
						ElasticsearchVO.class);
				
				resultList.add(ElasticsearchFestival); // 리스트에 넣기
				System.out.println(hit);					// JSON
            	System.out.println(ElasticsearchFestival);	// JAVA
    			System.out.println("----------------------------------------------------");
			}
			return resultList;
		} catch (Exception e) {
			LOG.error(e.getMessage(), e);
			return null;
		}
	}
}