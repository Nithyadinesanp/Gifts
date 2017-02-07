package com.niit.giftbackend.dao;

import com.niit.giftbackend.model.Cart;

public interface CartDao {

	void add(Cart cart);
	
	void update(Cart cart);
	
	Cart getById(int cartId);
	
	Cart getByUserId(int userId);
}