package kr.green.museum.service;

import java.util.ArrayList;

import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.RelicVO;

public interface RelicService {

	RelicVO getrelicnumber(Integer renum);

	ArrayList<RelicVO> getrelicsearch();

}
