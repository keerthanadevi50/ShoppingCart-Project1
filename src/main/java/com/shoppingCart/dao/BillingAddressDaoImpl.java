package com.shoppingCart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.model.BillingAddress;

@Repository
public class BillingAddressDaoImpl implements BillingAddressDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<BillingAddress> list(int id) {
		String hql = "from BillingAddress where id='" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<BillingAddress> list = (List<BillingAddress>) query.list();
		
		return list;
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public BillingAddress get(String username) {
		String hql = "from BillingAddress where username ='"+ username+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<BillingAddress> listBillingAddress = (List<BillingAddress>) (query).list();
		
		if (listBillingAddress != null && !listBillingAddress.isEmpty()){
			return listBillingAddress.get(0);
		}
		return null;
		// TODO Auto-generated method stub
	}

	@Transactional
	public BillingAddress getByBillingId(int BillingId) {
		String hql = "from BillingAddress where BillingId ='"+ BillingId+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<BillingAddress> listBillingAddress = (List<BillingAddress>) (query).list();
		
		if (listBillingAddress != null && !listBillingAddress.isEmpty()){
			return listBillingAddress.get(0);
		}
		return null;
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void saveOrUpdate(BillingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int billingId) {
		BillingAddress shippingAddressToDelete = new BillingAddress();
		shippingAddressToDelete.setId(billingId);
		sessionFactory.getCurrentSession().delete(shippingAddressToDelete);
		// TODO Auto-generated method stub
		
	}

	@Override
	public void editBillingAddress(BillingAddress shippingAddress) {
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