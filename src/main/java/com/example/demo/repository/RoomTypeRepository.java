package com.example.demo.repository;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.RoomType;

public interface RoomTypeRepository extends JpaRepository<RoomType, Long> {
	@Query(value = "select roomtype.* from roomtype, hotel where hotel.id=?1 and roomtype.hotel_id = hotel.id", nativeQuery = true)
	List<RoomType> getByHotelId(long Id);
}
