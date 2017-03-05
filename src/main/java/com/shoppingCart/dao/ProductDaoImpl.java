package com.shoppingCart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.model.product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public ProductDaoImpl() {
		System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
	}
@Transactional
	public product saveProduct(product pro) {
		System.out.println(pro.getPid());
		Session session = sessionFactory.openSession();
		session.save(pro); // insert into product values (next.val,.....)
		session.flush();
		session.close();
		System.out.println(pro.getPid());
		return pro;
	}
 @Transactional
	public List<product> getAllProducts() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Product");
		List<product> products = query.list();
		session.close();
		return products;
	}
@Transactional
	public product getProductById(int id) {
		Session session = sessionFactory.openSession();
		// select * from product where id=34
		product pro = (product) session.get(product.class, id);
		session.close();
		return pro;
	}

	@Transactional
	public void deleteProduct(int id) {
		Session session = sessionFactory.openSession();
		// Make the object persistent[read the data from the table and add it to
		// session]
		product pro = (product) session.get(product.class, id);
		session.delete(pro);
		session.flush();
		session.close();

	}
@Transactional
	public void updateProduct(product pro) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		System.out.println("Id of the product in dao is " + pro.getPid());
		session.update(pro); // update product set ..... where id=?
		session.flush();
		session.close();
	}

}
