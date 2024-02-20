package fpt.fa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fpt.fa.entities.Role;

public interface RoleRepository extends JpaRepository<Role, String> {
	
	@Query(value =  "Select * from role_table ",nativeQuery = true)
	 List<Role> findAll();
}
