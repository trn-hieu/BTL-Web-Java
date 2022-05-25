package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Hotel;

@Repository
public interface HotelRepository extends JpaRepository<Hotel, Long> {
	@Query(value = "select * from hotel where name like %?1%", nativeQuery = true)
	List<Hotel> findHotelByName(String name);
}
