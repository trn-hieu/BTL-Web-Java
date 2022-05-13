package com.example.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.example.demo.model.BookingStatistic;

@Service
public interface StatisticService {
	List<BookingStatistic> getBookingStatistic(String dateFrom, String dateTo);
	Map<String, Integer> getBookingDetailByDateAndHotel(String dateFrom, String dateTo, long hotel_id);
}
