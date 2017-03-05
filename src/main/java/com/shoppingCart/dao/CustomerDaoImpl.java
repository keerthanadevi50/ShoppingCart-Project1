package com.shoppingCart.dao;

import java.io.IOException;

import javax.websocket.Session;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.model.Authorities;
import com.shoppingCart.model.Customer;

@Repository
	public class CustomerDaoImpl implements CustomerDao{
		
		@Autowired
	private SessionFactory sessionFactory;
		
		@Transactional
		public void saveCustomer(Customer customer) {
			// TODO Auto-generated method stub
			Session session=(Session) sessionFactory.openSession();
			//child tables - Users, billingAddress,ShippingAddresss
			
			
			//Assignment
			String username=customer.getUsers().getUsername();
			String role="ROLE_USER";
			
			Authorities authorities=new Authorities();
			//set the values
			authorities.setUsername(username);
			authorities.setRole(role);
			
			((org.hibernate.Session) session).save(authorities);  //insert into authorites values (?,?,'Role_USER');
			((org.hibernate.Session) session).flush();
			try {
				session.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

	}


