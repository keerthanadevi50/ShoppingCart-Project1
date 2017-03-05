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

@Repository
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<category> getCategories() {

		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Category");
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
		int catId = cat.getId();
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cat);
	}

		    

		   
}
