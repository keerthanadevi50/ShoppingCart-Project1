package com.shoppingCart.service;
	import com.shoppingCart.model.product;
	import java.util.List;
	public interface ProductService {
		void saveProduct(product pro);
		List<product> getAllProducts();
		product getProductById(int id);
		
		void deleteProduct(int id);
		void updateProduct(product pro);
		}


