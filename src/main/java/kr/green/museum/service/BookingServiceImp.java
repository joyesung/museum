package kr.green.museum.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.green.museum.dao.BookingDAO;
import kr.green.museum.vo.BookingVO;


@Service
public class BookingServiceImp implements BookingService {
	@Autowired
	BookingDAO bookingDao;

	@Override
	public void sure(BookingVO bvo) {
		// TODO Auto-generated method stub
		bookingDao.insertsure(bvo);
	}

	@Override
	public int getLastBook() {
		// TODO Auto-generated method stub
		return bookingDao.selectMaxboonum();
	}

	@Override
	public BookingVO getBooking(Integer num) {
		// TODO Auto-generated method stub
		return bookingDao.selectBooking(num);
	}

	@Override
	public ArrayList<BookingVO> chi(BookingVO bvo) {
		return bookingDao.selectListBooking(bvo);
		
	}

	@Override
	public String getbooid() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BookingVO getboo(String booid) {
		// TODO Auto-generated method stub
		return null;
	}

	 
	
}
