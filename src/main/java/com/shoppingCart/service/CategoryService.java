package com.shoppingCart.service;



	import java.util.List;
	import com.shoppingCart.model.category;

	public interface CategoryService {
	public	List<category> getCategories();
	public category getCatById(int catId);
	void update(category cat);
	}


