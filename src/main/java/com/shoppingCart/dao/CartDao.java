package com.shoppingCart.dao;

import java.util.List;

import com.shoppingCart.model.Cart;

public interface CartDao {
	
		
		public List<Cart> list(int id);
		
		public List<Cart> list();
		
		public Cart get(int id);
		
		public void saveOrUpdate(Cart cart);
		
		public void delete(int cartId);
			


}