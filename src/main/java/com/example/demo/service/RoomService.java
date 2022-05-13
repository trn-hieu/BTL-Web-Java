package com.example.demo.service;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Room;

@Service
public interface RoomService {
	List<Room> getAvailableRoom(String dateFrom, String dateTo, String checkIn, String checkOut, long roomType);
	List<Room> getByHotelId(long id);
}
