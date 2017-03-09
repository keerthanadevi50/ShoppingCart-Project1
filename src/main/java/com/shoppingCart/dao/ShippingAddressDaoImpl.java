package com.shoppingCart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.model.ShippingAddress;

@Repository
public class ShippingAddressDaoImpl implements ShippingAddressDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<ShippingAddress> list(int id) {
		String hql = "from ShippingAddress where id='" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ShippingAddress> list = (List<ShippingAddress>) query.list();
		
		return list;
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public ShippingAddress get(String username) {
		String hql = "from ShippingAddress where username ='"+ username+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ShippingAddress> listShippingAddress = (List<ShippingAddress>) (query).list();
		
		if (listShippingAddress != null && !listShippingAddress.isEmpty()){
			return listShippingAddress.get(0);
		}
		return null;
		// TODO Auto-generated method stub
	}

	@Transactional
	public ShippingAddress getByShippingId(int ShippingId) {
		String hql = "from ShippingAddress where ShippingId ='"+ ShippingId+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ShippingAddress> listShippingAddress = (List<ShippingAddress>) (query).list();
		
		if (listShippingAddress != null && !listShippingAddress.isEmpty()){
			return listShippingAddress.get(0);
		}
		return null;
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void saveOrUpdate(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int shippingId) {
		ShippingAddress shippingAddressToDelete = new ShippingAddress();
		shippingAddressToDelete.setId(shippingId);
		sessionFactory.getCurrentSession().delete(shippingAddressToDelete);
		// TODO Auto-generated method stub
		
	}

	@Override
	public void editShippingAddress(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
		// TODO Auto-generated method stub
		
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



}
