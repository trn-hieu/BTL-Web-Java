package com.example.demo.admin_controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.BookingStatistic;
import com.example.demo.service.StatisticService;

@Controller
@RequestMapping("/admin/statistic")
public class StatisticController {
	@Autowired
	private StatisticService statisticService;
	
	@GetMapping
	public String getStatisticBooking(Model model, @RequestParam(name = "dateFrom", required = false)String dateFrom
			, @RequestParam(name = "dateTo", required = false) String dateTo) {
		if(dateFrom != null && dateFrom.equals("")) dateFrom=null;
		if(dateTo != null && dateTo.equals("")) dateTo=null;
		List<BookingStatistic> statistic = statisticService.getBookingStatistic(dateFrom, dateTo);
		model.addAttribute("statistic", statistic);
		System.out.println("AAAAAAAAAA");
		return "booking-statistic-all";
	}
	
	@GetMapping("/test")
	@ResponseBody
	public Map<String, Integer> test(@RequestParam(name = "dateFrom", required = false)String dateFrom
			, @RequestParam(name = "dateTo", required = false) String dateTo
			, @RequestParam(name = "hotel_id")long hotel_id) {
		if(dateFrom != null && dateFrom.equals("")) dateFrom=null;
		if(dateTo != null && dateTo.equals("")) dateTo=null;
		return statisticService.getBookingDetailByDateAndHotel(dateFrom, dateTo, hotel_id);
	}
}
