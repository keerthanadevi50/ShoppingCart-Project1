package com.shoppingCart.dao;

import com.shoppingCart.model.product;

import java.util.List;

public interface ProductDao {
	product saveProduct(product pro);

	List<product> getAllProducts();

	product getProductById(int id);

	void deleteProduct(int id);

	void updateProduct(product pro);
}
