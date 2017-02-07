package com.niit.giftbackend.dao;

import java.util.List;

import com.niit.giftbackend.model.Cart;
import com.niit.giftbackend.model.Item;

public interface ItemDao {

	void add(Item item);
	
	void remove(Item item);
	
	void removeAll(Cart cart);
	
	Item getItemById(int itemId);
	List<Item> getCartItems(int cartid);
}