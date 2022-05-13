package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.model.Customer;

@Service
public interface CustomerService {
	Customer findByUsername(String userName);
}
