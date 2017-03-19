package com.shoppingCart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.model.Cart;
import com.shoppingCart.model.Users;
@Repository
public class CartDaoImpl implements CartDao{
	

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<Cart> list(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public List<Cart> list() {
		@SuppressWarnings({ "unchecked" })
		List<Cart> listCart = (List<Cart>) sessionFactory.getCurrentSession().createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		// TODO Auto-generated method stub
		return listCart;
	}

	@Transactional
	public Cart get(int cartId) {
		Session session = sessionFactory.getCurrentSession();
		return (Cart) session.get(Cart.class, cartId);	
	}

	@Transactional
	public void saveOrUpdate(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cart);
		
	}

	@Transactional
	public void delete(int cartId) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart) session.get(Cart.class, cartId);
		session.delete(cart);
		session.flush();
		session.close();
	}
	

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Cart> getCartByuserName(String userName)
	{
		// TODO Auto-generated method stub
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Cart.class);
		criteria.add(Restrictions.eq("userName", userName));
		return  criteria.list();
	}
	
	
	
}

