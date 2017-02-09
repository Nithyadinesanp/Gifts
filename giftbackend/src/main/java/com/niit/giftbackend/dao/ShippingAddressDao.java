package com.niit.giftbackend.dao;

import com.niit.giftbackend.model.ShippingAddress;

public interface ShippingAddressDao {

	void addAddress(ShippingAddress shippingAddress);
	 
	void update(ShippingAddress shippingAddress);
	
	//ShippingAddress getByUserId(int userId);
}
