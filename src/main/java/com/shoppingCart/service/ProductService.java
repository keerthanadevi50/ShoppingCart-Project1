package com.shoppingCart.service;
	import com.shoppingCart.model.product;
	import java.util.List;
	public interface ProductService {
		product saveProduct(product pro);
		List<product> getAllProducts();
		product getProductById(int id);
		product getProductById(String id);
		void deleteProduct(int id);
		void updateProduct(product pro);
		}


