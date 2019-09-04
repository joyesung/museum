package kr.green.museum.service;

import java.util.ArrayList;

import kr.green.museum.vo.BookingVO;

public interface BookingService {

	void sure(BookingVO bvo);

	int getLastBook();

	BookingVO getBooking(Integer num);

	ArrayList<BookingVO> chi(BookingVO bvo);

	String getbooid();
	BookingVO getboo(String booid);

	
}
