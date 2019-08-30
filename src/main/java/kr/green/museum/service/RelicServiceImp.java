package kr.green.museum.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.museum.dao.RelicDAO;
import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.RelicVO;
@Service
public class RelicServiceImp implements RelicService {
	@Autowired
	RelicDAO relicdao;
	@Override
	public RelicVO getrelicnumber(Integer renum) {
		// TODO Auto-generated method stub
		return relicdao.selectrelicnumber(renum);
		
	}
	@Override
	public ArrayList<RelicVO> getrelicsearch() {
		// TODO Auto-generated method stub
		return relicdao.selectrelicsearch();
	}

}
