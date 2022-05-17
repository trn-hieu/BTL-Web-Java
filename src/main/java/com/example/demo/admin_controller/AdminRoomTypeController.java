package com.example.demo.admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.RoomTypeService;

@Controller
@RequestMapping("/admin/type")
public class AdminRoomTypeController {
	@Autowired
	private RoomTypeService roomTypeService;
	
	@GetMapping
	public String getById(@RequestParam("type_id")long type_id, Model model) {
		model.addAttribute("listType", roomTypeService.getById(type_id));
		return "roomtype-detail-admin";
	}
}
