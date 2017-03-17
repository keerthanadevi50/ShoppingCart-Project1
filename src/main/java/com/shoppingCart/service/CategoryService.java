package com.shoppingCart.service;



	import java.util.List;
	import com.shoppingCart.model.category;

	public interface CategoryService {
	public	List<category> getCategories();
	public category getCatById(int catId);
	public void delete(int id);
	void update(category cat);
	}


