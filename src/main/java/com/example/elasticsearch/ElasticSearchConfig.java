package com.example.elasticsearch;

import org.elasticsearch.client.RestHighLevelClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.elasticsearch.client.ClientConfiguration;
import org.springframework.data.elasticsearch.client.RestClients;

@Configuration		// 설정 클래스에 붙이는 어노테이션
public class ElasticSearchConfig{

    @Bean
    public RestHighLevelClient elasticsearchClient() {
        ClientConfiguration clientConfiguration = ClientConfiguration.builder()
                .connectedTo("43.200.173.91:9200")	// Elasticsearch가 존재하는 서버의 IP:9200(포트 번호)
                .build();
        return RestClients.create(clientConfiguration).rest();
    }
}