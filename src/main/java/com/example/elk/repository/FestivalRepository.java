package com.example.elk.repository;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

import com.example.elk.document.ElasticsearchFestival;

public interface FestivalRepository extends ElasticsearchRepository<ElasticsearchFestival, String> {
 
}