package com.shoppingCart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.model.Supplier;
import com.shoppingCart.model.product;

@Repository
	public class SupplierDaoImpl implements SupplierDao {

		@Autowired
		private SessionFactory sessionFactory;
		
		
		@SuppressWarnings("unchecked")
		@Transactional
		public List<Supplier> list() {
			@SuppressWarnings({ "unchecked" })
			List<Supplier> listSupplier = (List<Supplier>) sessionFactory.getCurrentSession().createCriteria(Supplier.class)
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
			return listSupplier;
		}

		@Transactional
		public Supplier get(String id) {
			// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();
			// select * from product where id=34
			Supplier supplier = (Supplier) session.get(Supplier.class, id);
			session.close();
			return supplier;
			
		}

		@Transactional
		public void saveOrUpdate(Supplier supplier) {
			// TODO Auto-generated method stub
			Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(supplier);
		}

		@Transactional
		public void delete(String id) {
			Supplier supplierToDelete = new Supplier();
			supplierToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(supplierToDelete);
			// TODO Auto-generated method stub
			
		}

		public SessionFactory getSessionFactory() {
			return sessionFactory;
		}

		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}

	}


