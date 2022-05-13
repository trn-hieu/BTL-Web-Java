package com.example.demo.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Room;

@Repository
public interface RoomRepository extends JpaRepository<Room, Long> {
	@Query(value = "select id, name, type from room "
			+ " left join "
			+ "(select room_id from booking"
			+ "	where (:roomType is null or type_id = :roomType) and status = 'ACCEPTED' and "
			+ "	((date_from < :dateFrom and date_to >:dateTo )"
			+ "	or (date_from <= :dateFrom and date_to > :dateFrom)"
			+ "	or (date_from >= :dateFrom and date_from < :dateTo)"
			+ "	or"
			+ "	case"
			+ "		when (date_to = :dateFrom) then (check_out > :checkIn)"
			+ "		when (date_from = :dateTo) then (check_in < :checkOut)"
			+ "	end"
			+ "	)) as table2 on room.id = table2.room_id"
			+ "    where table2.room_id is null and type = :roomType"
			,nativeQuery = true)
	List<Room> getAvailableRoom(@Param("dateFrom")String dateFrom
			,@Param("dateTo") String dateTo, @Param("checkIn") String checkIn
			, @Param("checkOut") String checkOut, @Param("roomType") long roomType);
	
	@Query(value = "select room.* from room, roomtype "
			+ " where room.type = roomtype.id and roomtype.hotel_id = ?1", nativeQuery = true)
	List<Room> getByHotelId(long id);
}
