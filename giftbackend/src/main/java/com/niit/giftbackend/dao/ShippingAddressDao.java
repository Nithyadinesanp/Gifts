package com.niit.giftbackend.dao;

import com.niit.giftbackend.model.ShippingAddress;

public interface ShippingAddressDao {

	void add(ShippingAddress shippingAddress);
	
	void update(ShippingAddress shippingAddress);
	
	//ShippingAddress getByUserId(int userId);
}
