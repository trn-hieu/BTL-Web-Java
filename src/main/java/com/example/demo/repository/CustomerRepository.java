package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Customer;

@Repository
public interface CustomerRepository extends UserRepository<Customer> {
	@Query(value = "select * from customer, user where user.id = customer.user_id and user.username = :username", nativeQuery = true)
//	@Query(value = "select *"
//			+ " from (select * from customer inner join user on user.id = customer.user_id ) as a"
//			+ " where a.username= :username ", nativeQuery = true)
	Customer findByUsername(@Param("username")String userName);

	
	
}
