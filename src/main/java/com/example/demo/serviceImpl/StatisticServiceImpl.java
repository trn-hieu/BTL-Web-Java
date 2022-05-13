package com.example.demo.serviceImpl;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.BookingStatistic;
import com.example.demo.repository.StatisticRepository;
import com.example.demo.service.StatisticService;
import java.util.HashMap;
@Service
public class StatisticServiceImpl implements StatisticService{
	@Autowired
	private StatisticRepository statisticRepo;
	
	@Override
	public List<BookingStatistic> getBookingStatistic(String dateFrom, String dateTo) {
		List<BookingStatistic> result = new ArrayList<>();
		List<Object[]> list = statisticRepo.getBookingStatistic(dateFrom, dateTo);
		for(int i=0;i<list.size();i++) {
			BookingStatistic temp =  new BookingStatistic();
			temp.setId(((BigInteger)list.get(i)[0]).longValue());
			temp.setQuantity(((BigInteger)list.get(i)[1]).intValue());
			temp.setName((String)list.get(i)[2]);
			result.add(temp);
		}
		return result;
	}

	@Override
	public Map<String, Integer> getBookingDetailByDateAndHotel(String dateFrom, String dateTo, long hotel_id) {
		List<Object[]> list = statisticRepo.getBookingByDateAndHotel(dateFrom, dateTo, hotel_id);
		Map<String, Integer> data = new HashMap<String, Integer>();
		for(int i=0;i<list.size();i++) {
			data.put(String.valueOf(list.get(i)[0]), ((BigInteger)list.get(i)[1]).intValue());
		}
		return data;
	}
	
	
}
