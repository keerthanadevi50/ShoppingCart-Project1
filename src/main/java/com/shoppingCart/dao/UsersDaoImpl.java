package com.shoppingCart.dao;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.model.Users;
@Repository
public class UsersDaoImpl implements UsersDao {
	@Autowired
	private SessionFactory sessionFactory;
	public UsersDaoImpl() {
		System.out.println("CREATING INSTANCE FOR USERSDAOIMPL");
	}

	@Transactional
	public Users saveUsers(Users users) {
		Session session = sessionFactory.openSession();
		session.save(users); // insert into product values (next.val,.....)
		session.flush();
		session.close();
		// TODO Auto-generated method stub
		return users;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
