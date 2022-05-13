package com.example.demo.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "roomtype")
public class RoomType {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private String name;
	
	@Transient
	private int roomAvailable;
	
	private float roomArea;
	
	private String roomView;
	
	private String bedInfor;
	
	private String capacity;
	
	private float price;
	
	@ManyToOne
	@JoinColumn(name = "hotel_id")
	private Hotel hotel;
	
	@OneToMany(mappedBy = "type", fetch = FetchType.LAZY)
	private List<Room> rooms;
	
	@OneToMany(mappedBy = "type")
	private List<Booking> bookings;

	public RoomType() {
		super();
	}

	

	public RoomType(String name, int roomAvailable, float roomArea, String roomView, String bedInfor, String capacity, float price) {
		super();
		this.name = name;
		this.roomAvailable = roomAvailable;
		this.roomArea = roomArea;
		this.roomView = roomView;
		this.bedInfor = bedInfor;
		this.capacity = capacity;
		this.price = price;
	}



	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRoomAvailable() {
		return roomAvailable;
	}

	public void setRoomAvailable(int roomAvailable) {
		this.roomAvailable = roomAvailable;
	}

	public float getRoomArea() {
		return roomArea;
	}

	public void setRoomArea(float roomArea) {
		this.roomArea = roomArea;
	}

	public String getRoomView() {
		return roomView;
	}

	public void setRoomView(String roomView) {
		this.roomView = roomView;
	}
	@JsonIgnore
	public List<Room> getRooms() {
		return rooms;
	}

	public void setRooms(List<Room> rooms) {
		this.rooms = rooms;
	}
	@JsonIgnore
	public List<Booking> getBookings() {
		return bookings;
	}

	public void setBookings(List<Booking> bookings) {
		this.bookings = bookings;
	}



	public String getBedInfor() {
		return bedInfor;
	}



	public void setBedInfor(String bedInfor) {
		this.bedInfor = bedInfor;
	}



	public String getCapacity() {
		return capacity;
	}



	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}



	public float getPrice() {
		return price;
	}



	public void setPrice(float price) {
		this.price = price;
	}


@JsonIgnore
	public Hotel getHotel() {
		return hotel;
	}



	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	
	
	
}
