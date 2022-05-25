package com.example.demo.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "hotel")
public class Hotel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private String name, address, district, city, phone, description;
	
	@ManyToMany
	@JoinTable(name = "hotel_service", joinColumns = @JoinColumn(name="hotel_id"),
			inverseJoinColumns = @JoinColumn(name="service_id"))
	private List<Service> services;
	
	@OneToMany(mappedBy = "hotel")
	private List<RoomType> types;
	
	@OneToMany(mappedBy = "hotel", cascade = CascadeType.PERSIST)
	private List<Image> images;
	
	public Hotel() {
		
	}

	public Hotel(String name, String address, String district, String city, String phone, String description) {
		super();
		this.name = name;
		this.address = address;
		this.district = district;
		this.city = city;
		this.phone = phone;
		this.description = description;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Service> getServices() {
		return services;
	}

	public void setServices(List<Service> services) {
		this.services = services;
	}

	
	public List<RoomType> getTypes() {
		return types;
	}

	public void setTypes(List<RoomType> types) {
		this.types = types;
	}

	public List<Image> getImages() {
		return images;
	}

	public void setImages(List<Image> images) {
		this.images = images;
	}
	
	
}
