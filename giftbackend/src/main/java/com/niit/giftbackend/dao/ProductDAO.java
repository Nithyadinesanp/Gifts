package com.niit.giftbackend.dao;

import java.util.List;

import com.niit.giftbackend.model.Product;

public interface ProductDAO {

	void add(Product product);

	void update(Product product);

	void delete(Product product);

	Product getById(int productId);

	List<Product> getByBrand(String brand);

	List<Product> getByCategory(String category);

	List<Product> list();
}
