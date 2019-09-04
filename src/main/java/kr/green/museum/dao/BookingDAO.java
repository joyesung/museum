package kr.green.museum.dao;


import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.museum.vo.BookingVO;

public interface BookingDAO {

	void insertsure(@Param("booking")BookingVO bvo);

	int selectMaxboonum();

	BookingVO selectBooking(Integer num);


	ArrayList<BookingVO> selectListBooking(@Param("booking")BookingVO bvo);
}
