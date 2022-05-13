package com.example.demo.controller;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.constant.BookingStatus;
import com.example.demo.model.Booking;
import com.example.demo.model.Customer;
import com.example.demo.model.RoomType;
import com.example.demo.repository.CustomerRepository;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.BookingService;
import com.example.demo.service.RoomTypeService;
import com.example.demo.service.UserService;

@Controller
@RequestMapping("/booking")
public class BookingController {
	@Autowired
	private EntityManager entityManager;
	@Autowired
	private UserService userService;
	@Autowired
	private BookingService bookingService;
	@Autowired
	private RoomTypeService roomTypeService;
	@Autowired
	private CustomerRepository customerRepo;
	
	@GetMapping("/create")
	public String getBookingForm(@RequestParam("room_type_id") long roomTypeId, Model model, Principal principal, Booking booking) {
		model.addAttribute("roomType", roomTypeService.getById(roomTypeId));
		System.out.println(principal.getName()+" AAAAAAAAAAAAAAAAAA");
		model.addAttribute("customer", customerRepo.getOne(userService.getUser(principal.getName()).getId()));
		
		return "booking-create";
	}
	
	@PostMapping("/create")
	public String createBooking(@RequestParam("room_type_id")long roomTypeId, Booking booking, 
			@RequestParam("checkin")String checkin, @RequestParam("checkout")String checkout,
			Principal principal) throws ParseException {
		//System.out.println(checkin +" "+checkout);
		
		booking.setCheckIn(LocalTime.parse(checkin));
		booking.setCheckOut(LocalTime.parse(checkout));
		booking.setStatus(BookingStatus.REQUEST.toString());
		booking.setType(entityManager.getReference(RoomType.class, roomTypeId));
		//
		System.out.println(principal.getName());
		if(customerRepo.findByUsername(principal.getName()) == null) System.out.println("GGGGGGGGGGGGGGGGGGGGGGGG");
		System.out.println(customerRepo.findByUsername(principal.getName()).getFirstName());
		//
		booking.setCustomer(customerRepo.findByUsername(principal.getName()));
		bookingService.save(booking);
		return "redirect:../";
	}
	
}
