package com.example.demo.model;

import javax.persistence.Entity;

import org.springframework.security.core.Transient;


public class BookingStatistic {
	private long id;
	private int quantity;
	private String name;
	
	
	
	public BookingStatistic() {
		super();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
