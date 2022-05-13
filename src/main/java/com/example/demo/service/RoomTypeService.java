package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.RoomType;

@Service
public interface RoomTypeService {
	List<RoomType> getByHotelId(long id);
	RoomType getById(long id);
}
