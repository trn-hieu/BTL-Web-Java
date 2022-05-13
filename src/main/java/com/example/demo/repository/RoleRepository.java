package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Role;
@Repository
public interface RoleRepository extends JpaRepository<Role, Long>{
	@Query(value = "select * from role where name =?1", nativeQuery = true)
	Role findByName(String name);
}
