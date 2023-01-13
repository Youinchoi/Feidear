package com.example.domain;

import lombok.Data;

@Data
public class QnaVO {					// QNA
	
	private Integer qna_no;				// QNA 번호
	private String 	qna_title;			// QNA 제목
	private String 	qna_question;		// QNA 질문 내용
	private String 	qna_answer;			// QNA 답변 내용
	private String 	qna_state;			// QNA 처리 상태

}
