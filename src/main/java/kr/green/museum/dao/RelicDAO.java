package kr.green.museum.dao;

import java.util.ArrayList;

import kr.green.museum.vo.RelicVO;

public interface RelicDAO {
	RelicVO selectrelicnumber(Integer renum);
	ArrayList<RelicVO> selectrelicsearch();

}
