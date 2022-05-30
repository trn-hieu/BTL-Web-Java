package com.example.demo.admin_controller;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Hotel;
import com.example.demo.model.RoomType;
import com.example.demo.service.RoomTypeService;

@Controller
@RequestMapping("/admin/type")
public class AdminRoomTypeController {
	@Autowired
	private RoomTypeService roomTypeService;
	@Autowired
	private EntityManager entityManager;
	
	@GetMapping
	public String getById(@RequestParam("type_id")long type_id, Model model) {
		model.addAttribute("listType", roomTypeService.getById(type_id));
		return "roomtype-detail-admin";
	}
	
	@PostMapping("/create")
	public String createRoomType(RoomType type, @RequestParam("hotel_id")long hotel_id) {
		type.setHotel(entityManager.getReference(Hotel.class, hotel_id));
		roomTypeService.save(type);
		return "redirect:../hotel/"+hotel_id;
	}
	
	@GetMapping("/update/{id}")
	public String getFormUpdate(@PathVariable("id")long type_id, Model model) {
		RoomType type = roomTypeService.getById(type_id);
		model.addAttribute("type", type);
		return "roomtype-update-admin";
	}
	
	@PostMapping("/update/{id}")
	public String updateRoomType(@PathVariable("id")long type_id, RoomType type) {
		roomTypeService.save(type);
		return "redirect:/admin/hotel/";
	}
}
