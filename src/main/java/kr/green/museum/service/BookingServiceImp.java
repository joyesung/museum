package kr.green.museum.service;

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


	
}
