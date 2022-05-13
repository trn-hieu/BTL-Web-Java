package com.example.demo.admin_controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.Hotel;
import com.example.demo.model.Room;
import com.example.demo.model.RoomType;
import com.example.demo.service.HotelService;
import com.example.demo.service.RoomService;
import com.example.demo.service.RoomTypeService;

@Controller
@RequestMapping("/admin/hotel")
public class AdminHotelController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private RoomTypeService roomTypeService;
	@Autowired
	private RoomService roomService;
	
	@GetMapping
	public String getAll(Model model, Hotel hotel) {
		List<Hotel> list = hotelService.getAll();
		model.addAttribute("listHotel", list);
		return "hotel-list-admin";
	}
	
	@GetMapping("/{id}")
	public String getHotelByID(Model model, @PathVariable("id")long id) {
		Hotel hotel = hotelService.getById(id);
		List<RoomType> listType = roomTypeService.getByHotelId(id);
		List<Room> listRoom = roomService.getByHotelId(id);
		model.addAttribute("listRoom", listRoom);
		model.addAttribute("listType", listType); 
		model.addAttribute("hotel", hotel);
		return "hotel-detail-admin";
	}
	
	@PostMapping("/create")
	public String createHotel(Hotel hotel) {
		hotelService.save(hotel);
		return "redirect:/admin/hotel";
	}
}
