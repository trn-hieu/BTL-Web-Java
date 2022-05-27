package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Booking;

@Service
public interface BookingService {
	void save(Booking booking);
	List<Booking> getRequestBooking();
	boolean setStatus(long id, String status);
	Booking getById(long id);
	List<Booking> getByHotelAndDate(long hotel_id, String date);
	List<Booking> getByUsername(String username, String status);
}
