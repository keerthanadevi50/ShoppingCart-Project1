package com.shoppingCart.service;

import java.util.List;

import com.shoppingCart.model.Cart;

public interface CartService {
		
		public List<Cart> list(int id);
		
		public List<Cart> list();
		
		public Cart get(int cartId);
		
		public List<Cart> getCartByuserName(String userName);
		
		public void saveOrUpdate(Cart cart);
		
		public void delete(int cartId);
		
		public boolean itemAlreadyExist(int userId, int productId, boolean b);

		public Cart getByUserandProduct(int userId, int productId);


}
