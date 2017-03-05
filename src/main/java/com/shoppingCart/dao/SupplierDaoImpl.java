package com.shoppingCart.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.model.Supplier;

@Repository("SupplierDao")
	public class SupplierDaoImpl implements SupplierDao {

		@Autowired
		private SessionFactory sessionFactory;

		

		@SuppressWarnings("unchecked")
		@Transactional
		public List<Supplier> list() {
			// TODO Auto-generated method stub
			return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
		}

		@Transactional
		public Supplier get(String id) {
			// TODO Auto-generated method stub
			return null;
		}

		@Transactional
		public void saveOrUpdate(Supplier category) {
			// TODO Auto-generated method stub
			
			
		}

		@Override
		public void delete(String id) {
			// TODO Auto-generated method stub
			
		}

		public SessionFactory getSessionFactory() {
			return sessionFactory;
		}

		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}

	}


