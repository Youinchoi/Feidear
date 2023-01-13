package com.example.elk.config;

import org.elasticsearch.client.RestHighLevelClient;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.elasticsearch.client.ClientConfiguration;
import org.springframework.data.elasticsearch.client.RestClients;
import org.springframework.data.elasticsearch.config.AbstractElasticsearchConfiguration;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;

// elasticsearch 설정 클래스
@Configuration
@EnableElasticsearchRepositories // elasticsearch repository 허용
public class ElasticsearchConfig extends AbstractElasticsearchConfiguration {

    @Override
    public RestHighLevelClient elasticsearchClient() {
        ClientConfiguration clientConfiguration = ClientConfiguration.builder()
                .connectedTo("192.168.0.2:9200")
                .build();
        return RestClients.create(clientConfiguration).rest();
    }
}
