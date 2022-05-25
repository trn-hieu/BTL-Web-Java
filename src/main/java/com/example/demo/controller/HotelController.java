package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Hotel;
import com.example.demo.model.RoomType;
import com.example.demo.service.HotelService;
import com.example.demo.service.RoomTypeService;

@Controller
@RequestMapping("/hotel")
public class HotelController {
	@Autowired
	private HotelService hotelService;
	
	@Autowired
	private RoomTypeService roomTypeService;
	
	@GetMapping
	public String getAll(Model model, @RequestParam(name = "keyword", required = false)String keyword) {
		if(keyword==null || keyword.equals("") || keyword.isEmpty()) {
			List<Hotel> list = hotelService.getAll();
			model.addAttribute("list", list);
		}else {
			List<Hotel> list = hotelService.findByName(keyword);
			model.addAttribute("list", list);
		}
		return "hotel-list-client";
	}
	
	@GetMapping("/{id}")
	public String getHotelByID(Model model, @PathVariable("id")long id) {
		Hotel hotel = hotelService.getById(id);
		List<RoomType> listType = roomTypeService.getByHotelId(id);
		model.addAttribute("listType", listType); 
		model.addAttribute("hotel", hotel);
		return "hotel-detail-client";
	}
}
