package com.example.demo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ServiceRepository;
import com.example.demo.service.ServiceService;

@Service
public class ServiceServiceImpl implements ServiceService{
	@Autowired
	private ServiceRepository ServiceRepo;
	
	@Override
	public List<com.example.demo.model.Service> getAll() {
		return ServiceRepo.findAll();
	}
	
}
