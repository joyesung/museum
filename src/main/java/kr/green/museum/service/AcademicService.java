package kr.green.museum.service;

import java.util.ArrayList;

import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.AcademicVO;

public interface AcademicService {
	ArrayList<AcademicVO> getrelicPublished(Criteria cri, String actype);

	AcademicVO getrelicdiplay(Integer acnum);

}
