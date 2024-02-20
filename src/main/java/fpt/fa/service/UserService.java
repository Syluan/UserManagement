package fpt.fa.service;

import java.util.List;

import fpt.fa.entities.User;

public interface UserService {

	public void save(User user);
	
	void update(User user);

	List<User> findAll();
	
	User findById(String  id);
	
	
}
