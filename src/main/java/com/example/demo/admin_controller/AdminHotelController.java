package com.example.demo.admin_controller;

import java.util.ArrayList;
import java.util.List;

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
import com.example.demo.model.Room;
import com.example.demo.model.RoomType;
import com.example.demo.model.Service;
import com.example.demo.service.HotelService;
import com.example.demo.service.RoomService;
import com.example.demo.service.RoomTypeService;
import com.example.demo.service.ServiceService;

@Controller
@RequestMapping("/admin/hotel")
public class AdminHotelController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private RoomTypeService roomTypeService;
	@Autowired
	private RoomService roomService;
	@Autowired
	private ServiceService Service;
	@Autowired
	private EntityManager entityManager;
	
	@GetMapping
	public String getAll(Model model, Hotel hotel) {
		List<Hotel> list = hotelService.getAll();
		List<Service> listService = Service.getAll();
		model.addAttribute("listHotel", list);
		model.addAttribute("service", listService);
		System.out.println(listService.size());
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
	public String createHotel(Hotel hotel, @RequestParam("service")long[] serviceId) {
		System.out.println(serviceId[0]);
		List<Service> listServices = new ArrayList<>();
		for(int i=0;i<serviceId.length;i++) {
			listServices.add(entityManager.getReference(Service.class, serviceId[i]));
		}
		hotel.setServices(listServices);
		hotelService.save(hotel);
		return "redirect:/admin/hotel";
	}
	
	@GetMapping("/update/{id}")
	public String getUpdateForm( @PathVariable("id")long id, Model model) {
		model.addAttribute("hotel", hotelService.getById(id));
		return "hotel-update-admin";
	}
	
	@PostMapping("/update/{id}")
	public String updateHotel( @PathVariable("id")long id, Hotel hotel) {
		hotelService.save(hotel);
		return "redirect:/admin/hotel";
	}
	
}
