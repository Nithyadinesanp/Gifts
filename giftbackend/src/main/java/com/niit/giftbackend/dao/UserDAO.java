package com.niit.giftbackend.dao;

import java.util.List;

import com.niit.giftbackend.model.User;

public interface UserDAO {

	void add(User user);
	
	void update(User user);
	
	void delete(User user);
	
	User getById(int userId);
	
	User getUserByUsername(String username);
	
	List<User> list();
}
