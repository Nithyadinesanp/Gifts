package com.niit.giftbackend.dao;

import com.niit.giftbackend.model.UserOrder;

public interface UserOrderDao {

	void add(UserOrder userOrder);
	
	UserOrder getUserOrderById(int userOrderId);
}
