package com.example.demo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Hotel;
import com.example.demo.repository.HotelRepository;
import com.example.demo.service.HotelService;

@Service
public class HotelServiceImpl implements HotelService{
	@Autowired
	private HotelRepository hotelRepo;
	
	@Override
	public List<Hotel> getAll() {
		return hotelRepo.findAll();
	}

	@Override
	public Hotel getById(long id) {
		Hotel hotel = hotelRepo.getById(id);
		return hotel;
	}

	@Override
	public void save(Hotel hotel) {
		hotelRepo.save(hotel);
		
	}
	
	
}
