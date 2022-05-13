package com.example.demo.serviceImpl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Room;
import com.example.demo.repository.RoomRepository;
import com.example.demo.service.RoomService;

@Service
public class RoomServiceImpl implements RoomService{
	@Autowired
	private RoomRepository roomRepo;
	
	@Override
	public List<Room> getAvailableRoom(String dateFrom, String dateTo, String checkIn, String checkOut, long roomType) {
		// TODO Auto-generated method stub
		return roomRepo.getAvailableRoom(dateFrom, dateTo, checkIn, checkOut, roomType);
	}

	@Override
	public List<Room> getByHotelId(long id) {
		return roomRepo.getByHotelId(id);
	}
	
	
	
}
