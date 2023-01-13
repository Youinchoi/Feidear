package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.EventDAO;
import com.example.domain.Criteria;
import com.example.domain.EventVO;

@Service
public class EventServiceImpl implements EventService {

	
	@Autowired
	private EventDAO eventDAO;

	@Override
	public EventVO getEvent(EventVO vo) {
		EventVO list = eventDAO.getEvent(vo);
		return list;
	}

	@Override
	public List<EventVO> getEventList(Criteria cri) {
		List<EventVO> list = eventDAO.getEventList(cri);
		return list;
	}

	@Override
	public int listCount() throws Exception {
		return eventDAO.listCount();
	}


}
