package com.shoppingCart.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.dao.CartDao;
import com.shoppingCart.model.Cart;


@Service
public class CartServiceImpl implements CartService{
	
	
		@Autowired
		private CartDao cartDao;

		@Transactional
		public List<Cart> list(int id) {
			// TODO Auto-generated method stub
			return cartDao.list(id);
		}

		@Transactional
		public List<Cart> list() {
			// TODO Auto-generated method stub
			return cartDao.list();
		}

		@Transactional
		public Cart get(int id) {
			// TODO Auto-generated method stub
			return cartDao.get(id);
		}

		@Transactional
		public void saveOrUpdate(Cart cart) {
			// TODO Auto-generated method stub
			cartDao.saveOrUpdate(cart);
		}

		@Transactional
		public void delete(int cartId) {
			// TODO Auto-generated method stub
			cartDao.delete(cartId);
		}

		
		
}
