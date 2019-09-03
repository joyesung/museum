package kr.green.museum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.green.museum.dao.BookingDAO;

@Service
public class BookingServiceImp implements BookingService {
	@Autowired
	BookingDAO bookingDao;
}
