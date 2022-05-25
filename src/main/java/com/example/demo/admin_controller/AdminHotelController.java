package com.example.demo.admin_controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.Hotel;
import com.example.demo.model.Image;
import com.example.demo.model.Room;
import com.example.demo.model.RoomType;
import com.example.demo.model.Service;
import com.example.demo.repository.ImageRepository;
import com.example.demo.service.HotelService;
import com.example.demo.service.RoomService;
import com.example.demo.service.RoomTypeService;
import com.example.demo.service.ServiceService;

import antlr.debug.NewLineEvent;

@Controller
@RequestMapping("/admin/hotel")
public class AdminHotelController {
	public static String imageFolder = "/images/hotel/";
	public static String saveHotelImagePath = System.getProperty("user.dir")+"/src/main/resources/static" +imageFolder;
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
	@Autowired
	private ImageRepository imageRepo;
	
	@GetMapping
	public String getAll(Model model, Hotel hotel) throws IOException  {
		List<Hotel> list = hotelService.getAll();
		List<Service> listService = Service.getAll();
		model.addAttribute("listHotel", list);
		model.addAttribute("service", listService);
		
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
	public String createHotel(Hotel hotel, @RequestParam(name = "service", required = false)long[] serviceId,
			@RequestParam(name = "file",required = false) MultipartFile[] files) throws Exception, IOException  {
		if(serviceId != null) {
			List<Service> listServices = new ArrayList<>();
			for(int i=0;i<serviceId.length;i++) {
				listServices.add(entityManager.getReference(Service.class, serviceId[i]));
			}
			hotel.setServices(listServices);
		}
		List<Image> images = new ArrayList<>();
		for(int i=0;i<files.length;i++){
			File temp = new File(saveHotelImagePath+files[i].getOriginalFilename()); //create file 
			temp.createNewFile();													
			files[i].transferTo(temp);                                               // save submited file to that file was just created
			Image image = new Image(imageFolder+files[i].getOriginalFilename()); //process to bond image's url to hotel
			image.setHotel(hotel);
			images.add(image);
		}
		
		hotel.setImages(images);
		hotelService.save(hotel);
		return "redirect:/admin/hotel";
	}
	
	@GetMapping("/update/{id}")
	public String getUpdateForm( @PathVariable("id")long id, Model model) {
		List<Service> listService = Service.getAll(); // get all service in DB
		Hotel hotel = hotelService.getById(id);       // get hotel
		String[] serviceAvailableID = new String[hotel.getServices().size()];
		for(int i=0;i<hotel.getServices().size();i++) {
			serviceAvailableID[i] = String.valueOf(hotel.getServices().get(i).getId()); // get id of services that hotel has
		}
		
		model.addAttribute("serviceAvailable", serviceAvailableID);
		model.addAttribute("hotel", hotel);
		model.addAttribute("service", listService);
		return "hotel-update-admin";
	}
	
	@PostMapping("/update/{id}")
	public String updateHotel( @PathVariable("id")long id, Hotel hotel,@RequestParam("service")long[] serviceId)throws Exception {
		List<Service> listServices = new ArrayList<>();
		for(int i=0;i<serviceId.length;i++) {
			listServices.add(entityManager.getReference(Service.class, serviceId[i]));
		}
		
		hotel.setServices(listServices);
		hotelService.save(hotel);
		return "redirect:/admin/hotel";
	}
	
}
