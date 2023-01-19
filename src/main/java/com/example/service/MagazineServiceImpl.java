package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.MagazineDAO;
import com.example.domain.Criteria;
import com.example.domain.MagazineVO;

@Service
public class MagazineServiceImpl implements MagazineService {

	
	@Autowired
	private MagazineDAO magazineDAO;

	@Override
	public MagazineVO getMagazine(MagazineVO vo) {
		MagazineVO list = magazineDAO.getMagazine(vo);
		return list;
	}

	@Override
	public List<MagazineVO> getMagazineList(Criteria cri) {
		List<MagazineVO> list = magazineDAO.getMagazineList(cri);
		return list;
	}

	@Override
	public int listCount() throws Exception {
		return magazineDAO.listCount();
	}

	@Override
	public void saveMagazine(MagazineVO vo) {
		magazineDAO.saveMagazine(vo);
	}

	@Override
	public void deleteMagazine(MagazineVO vo) {
		magazineDAO.deleteMagazine(vo);
	}

	@Override
	public List<MagazineVO> getMagazine3() {
		List<MagazineVO> list = magazineDAO.getMagazine3();		
		return list;
	}


}
