package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Hotel;

@Service
public interface HotelService {
	List<Hotel> getAll();
	Hotel getById(long id);
	void save(Hotel hotel);
	List<Hotel> findByName(String name);
}
