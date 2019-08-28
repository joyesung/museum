package kr.green.museum.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.museum.pagination.Criteria;
import kr.green.museum.vo.AcademicVO;

public interface AcademicDAO {
	ArrayList<AcademicVO> selectrelicPublished(@Param("cri")Criteria cri, @Param("actype")String actype);

	AcademicVO selectrelicdiplay(@Param("acnum") Integer acnum);

}
