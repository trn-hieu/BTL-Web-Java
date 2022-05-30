package com.example.demo.admin_controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.constant.BookingStatus;
import com.example.demo.model.Booking;
import com.example.demo.model.Room;
import com.example.demo.service.BookingService;
import com.example.demo.service.RoomService;

@Controller
@RequestMapping("/admin/booking")
public class AdminBookingController {
	@Autowired
	private BookingService bookingService;
	@Autowired
	private RoomService roomService;
	@Autowired
	private EntityManager entityManager;
	
	@GetMapping
	public String getRequestBooking(Model model) {
		model.addAttribute("questBooking", bookingService.getRequestBooking());
		System.out.println(bookingService.getRequestBooking().size());
		return "booking-list-admin";
	}
	
	@PostMapping("/decline")
	public String declineBooking(@RequestParam("booking_id")long id) {
		bookingService.setStatus(id, BookingStatus.REFUSED.toString());
		return "redirect:/admin/booking?decline=true";
	}
	
	@GetMapping("/request/{id}")
	public String getRequestBookingById(@PathVariable("id") long id, Model model) throws ParseException {
		Booking booking = bookingService.getById(id);
		String dateFrom = new SimpleDateFormat("YYYY-MM-dd").format(booking.getDateFrom());
		String dateTo = new SimpleDateFormat("YYYY-MM-dd").format(booking.getDateTo());
		String checkIn = booking.getCheckIn().toString();
		String checkOut = booking.getCheckOut().toString();
		List<Room> listRoom = roomService.getAvailableRoom(dateFrom, dateTo, checkIn, checkOut, booking.getType().getId());
		System.out.println(listRoom.size());
		model.addAttribute("booking", booking);
		model.addAttribute("room", listRoom);
		
		return "booking-accept-admin";
	}
	
	@PostMapping("/accept")
	public String accecptBooking(@RequestParam("room_id")long roomId, @RequestParam("booking_id")long bookingId) {
		System.out.println(roomId +" "+ bookingId);
		Booking booking=bookingService.getById(bookingId);
		booking.setRoom(entityManager.getReference(Room.class, roomId));
		booking.setStatus(BookingStatus.ACCEPTED.toString());
		bookingService.save(booking);
		return "redirect:/admin/booking?accept=true";
	}
	
	@GetMapping("/detail")
	@ResponseBody
	public ResponseEntity<List<Booking>> getByHotelAndDate(@RequestParam("hotel_id")long hotel_id, @RequestParam("date")String date){
		
		return new ResponseEntity<List<Booking>>(bookingService.getByHotelAndDate(hotel_id, date), HttpStatus.OK);
	}
}
