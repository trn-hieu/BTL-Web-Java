package com.example.demo.admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.User;
import com.example.demo.service.UserService;


@Controller
@RequestMapping("/admin")
public class AdminMainController {
	@GetMapping
	public String getMainPage() {
		return "MainView";
	}
}
