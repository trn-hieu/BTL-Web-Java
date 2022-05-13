package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Hotel;

@Repository
public interface StatisticRepository extends JpaRepository<Hotel,Long>{
	@Query(value = "SELECT hotel.id, count(*), hotel.name "
			+ "from booking, roomtype, hotel "
			+ "where booking.type_id = roomtype.id and roomtype.hotel_id = hotel.id "
			+ "	and booking.status = 'ACCEPTED' "
			+ "    and ("
			+ "			(:dateFrom is null or booking.date_from = :dateFrom) "
			+ "        or (:dateTo is null or booking.date_from = :dateTo) "
			+ "        or ("
			+ "				(:dateFrom is null or booking.date_from >= :dateFrom) "
			+ "			and "
			+ "				(:dateTo is null or booking.date_from <=:dateTo) "
			+ "        )"
			+ "    )"
			+ "group by hotel.id", nativeQuery = true)
	List<Object[]> getBookingStatistic(@Param("dateFrom")String dateFrom
			,@Param("dateTo") String dateTo);
	
	@Query(value = "select date_from, count(*) from booking, hotel, roomtype "
			+ "where booking.type_id = roomtype.id and roomtype.hotel_id = hotel.id "
			+ "and hotel.id = :hotel and booking.status = 'ACCEPTED' "
			+ "    and ("
			+ "			(:dateFrom is null or booking.date_from = :dateFrom) "
			+ "        or (:dateTo is null or booking.date_from = :dateTo) "
			+ "        or ("
			+ "				(:dateFrom is null or booking.date_from >= :dateFrom) "
			+ "			and "
			+ "				(:dateTo is null or booking.date_from <=:dateTo) "
			+ "        )"
			+ "    ) group by date_from "
			+ "order by date_from asc", nativeQuery = true)
	List<Object[]> getBookingByDateAndHotel(@Param("dateFrom")String dateFrom
			,@Param("dateTo") String dateTo, @Param("hotel") long hotel_id);
}
