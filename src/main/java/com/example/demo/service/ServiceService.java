package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ServiceService {
	List<com.example.demo.model.Service> getAll();
}
