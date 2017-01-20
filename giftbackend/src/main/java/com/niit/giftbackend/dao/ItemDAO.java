package com.niit.giftbackend.dao;

import com.niit.giftbackend.model.Cart;
import com.niit.giftbackend.model.Item;

public interface ItemDAO {

	void add(Item item);
	
	void remove(Item item);
	
	void removeAll(Cart cart);
	
	Item getItemById(int itemId);
}
