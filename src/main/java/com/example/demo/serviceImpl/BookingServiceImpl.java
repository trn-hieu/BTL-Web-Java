package com.example.demo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Booking;
import com.example.demo.repository.BookingRepository;
import com.example.demo.service.BookingService;

@Service
public class BookingServiceImpl implements BookingService {
	@Autowired
	private BookingRepository bookingRepo;
	
	@Override
	public void save(Booking booking) {
		bookingRepo.save(booking);
		
	}

	@Override
	public List<Booking> getRequestBooking() {
		return bookingRepo.getWaitingBooking();
	}

	@Override
	public boolean setStatus(long id, String status) {
		int result = bookingRepo.setStatus(id, status);
		if(result == 1 ) return true;
		else
			return false;
	}

	@Override
	public Booking getById(long id) {
		return bookingRepo.getById(id);
	}

	@Override
	public List<Booking> getByHotelAndDate(long hotel_id, String date) {
		return bookingRepo.getByDateAndHotel(hotel_id, date);
	}

	@Override
	public List<Booking> getByUsername(String username, String status) {
		return bookingRepo.getBookingByUsername(username, status);
	}
	
	
}
