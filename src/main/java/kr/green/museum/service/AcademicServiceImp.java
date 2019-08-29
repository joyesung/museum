package kr.green.museum.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.museum.dao.AcademicDAO;
import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.AcademicVO;
@Service
public class AcademicServiceImp implements AcademicService {
	@Autowired
	AcademicDAO academicDao;
	
	@Override
	public ArrayList<AcademicVO> getrelicPublished(Criteria cri, String actype) {
	
		return academicDao.selectrelicPublished(cri, actype);
	}

	@Override
	public AcademicVO getrelicdiplay( Integer acnum) {
		// TODO Auto-generated method stub
		return academicDao.selectrelicdiplay(acnum);
	}

	@Override
	public ArrayList<AcademicVO> getrelichao(Criteria cri, String actype) {
		// TODO Auto-generated method stub
		return academicDao.selectrelichao(cri, actype);
	}

}
