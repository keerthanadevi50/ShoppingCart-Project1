package com.shoppingCart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
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
		session.saveOrUpdate(users);
		// insert into product values (next.val,.....)
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

	@Transactional
	public Users getUsersById(String username) {
		// TODO Auto-generated method stub
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Users.class);
		criteria.add(Restrictions.eq("username", username));
		return (Users) criteria.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public boolean UserAlreadyExist(String email, boolean b) {
		String hql = "from Users where email = '"+ email +"'";
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery(hql);
		// TODO Auto-generated method stub
		List<Users> list = (List<Users>) query.list();
		if (list != null && !list.isEmpty()){
			return true; 
		}
		return false;
	}

}
