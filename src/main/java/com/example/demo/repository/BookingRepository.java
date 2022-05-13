package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {
	@Query(value = "select * from booking where status = 'REQUEST'", nativeQuery = true)
	List<Booking> getWaitingBooking();
	
	@Transactional
	@Modifying
	@Query(value = "update booking set status = ?2 where id=?1",nativeQuery = true)
	int setStatus(long id, String status);
	
	@Query(value = "select booking.* from booking, roomtype, hotel "
			+ "where booking.type_id = roomtype.id and roomtype.hotel_id = hotel.id "
			+ "and hotel.id = :hotel_id and booking.status = 'ACCEPTED'"
			+ "and booking.date_from = :date"
			,nativeQuery = true)
	List<Booking> getByDateAndHotel(@Param("hotel_id")long hotel_id, @Param("date")String date);
}
