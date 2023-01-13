package com.example.elk.service;

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

import com.example.elk.document.ElasticsearchFestival;
import com.example.elk.helper.Indices;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class SearchQueryService {

	private static ObjectMapper MAPPER = new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES,
			false);
	private static Logger LOG = LoggerFactory.getLogger(SearchQueryService.class);

	@Autowired
	private RestHighLevelClient client;

	public ArrayList<ElasticsearchFestival> getByQuery(String query) {
		try {
			SearchRequest request = new SearchRequest(Indices.FESTIVAL_INDEX);
			SearchSourceBuilder ssb = new SearchSourceBuilder();
			ssb.query(QueryBuilders
					.multiMatchQuery(query, "fetv_name", "fetv_short", "fetv_info", "fetv_addr", "fetv_place",
							"fetv_host", "fetv_fee", "fetv_tag", "fetv_area")
					.field("fetv_name", 4).field("fetv_tag", 3).field("fetv_info", 2)).size(30); // 검색시 가중치 부여 및 검색량
																									// 30개로 늘리기
			request.source(ssb);
			SearchResponse documentFields = client.search(request, RequestOptions.DEFAULT);
			if (documentFields == null) {
				return null;

			}
			SearchHits hits = documentFields.getHits();
			SearchHit[] searchHits = hits.getHits(); // 여러개의 hits가 있어서 리스트로 담는다
			System.out.println(searchHits.length); // hits의 리스트 길이 확인 출력

			ArrayList<ElasticsearchFestival> resultList = new ArrayList<>();
			for (SearchHit hit : searchHits) {
				System.out.println(hit);
				ElasticsearchFestival ElasticsearchFestival = MAPPER.readValue(hit.getSourceAsString(),
						ElasticsearchFestival.class); // ElasticsearchFestival 객체의 대이터타입에 ElasticsearchFestival변수이름으로
														// 담는다

				resultList.add(ElasticsearchFestival); // 리스트에 넣기
            	System.out.println(ElasticsearchFestival);												//확인차 출력
			}

			return resultList;

		} catch (Exception e) {
			LOG.error(e.getMessage(), e);
			return null;
		}

	}

}
