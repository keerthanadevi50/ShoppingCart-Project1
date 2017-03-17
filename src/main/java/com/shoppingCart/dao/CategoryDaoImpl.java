package com.shoppingCart.dao;

import java.io.IOException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.model.category;
import com.shoppingCart.model.product;

@Repository
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Transactional
	public List<category> getCategories() {

		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from category");
		List<category> categories = query.list();
		session.close();
		return categories;
	}
	@Transactional
	public category getCatById (int catId) {
		        Session session = sessionFactory.getCurrentSession();
		        return (category) session.get(category.class, catId);
		    }
	@Transactional
	public category validate(int catId) throws IOException
	{
	category cat=getCatById(catId);
	return cat;
    
	}
	@Transactional
	public void update(category cat) {
		@SuppressWarnings("unused")
		int catId = cat.getId();
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cat);
	}
	@Transactional
	public void delete(int id) {
		Session session = sessionFactory.openSession();
		// Make the object persistent[read the data from the table and add it to
		// session]
		category cat = (category) session.get(category.class, id);
		session.delete(cat);
		session.flush();
		session.close();

		// TODO Auto-generated method stub
		
	}

		    

		   
}
