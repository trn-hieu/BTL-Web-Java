package com.example.demo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.RoomType;
import com.example.demo.repository.RoomTypeRepository;
import com.example.demo.service.RoomTypeService;

@Service
public class RoomTypeServiceImpl implements RoomTypeService{
	@Autowired
	private RoomTypeRepository roomTypeRepo;

	@Override
	public List<RoomType> getByHotelId(long id) {
		return roomTypeRepo.getByHotelId(id);
	}

	@Override
	public RoomType getById(long id) {
		return roomTypeRepo.getById(id);
	}
	
	
}
