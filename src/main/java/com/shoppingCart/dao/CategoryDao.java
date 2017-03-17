package com.shoppingCart.dao;
	import java.io.IOException;
import java.util.List;
	import com.shoppingCart.model.category;
	public interface CategoryDao {
	public List<category> getCategories();
	public category getCatById (int catId);
	public void delete(int id);
	public category validate(int catId) throws IOException;
	void update(category cat);
	}

