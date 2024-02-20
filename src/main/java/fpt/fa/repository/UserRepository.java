package fpt.fa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fpt.fa.entities.User;

public interface UserRepository extends JpaRepository<User, String> {
	
	@Query(value =  "Select * from user_table us where us.deleted_at IS NULL ",nativeQuery = true)
	 List<User> findAll();

	

	
	

}
