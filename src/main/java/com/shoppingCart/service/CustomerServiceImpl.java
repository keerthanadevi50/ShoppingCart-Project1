package com.shoppingCart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoppingCart.dao.CustomerDao;
import com.shoppingCart.model.Customer;

@Service
	public class CustomerServiceImpl implements CustomerService{
		@Autowired
	private CustomerDao customerDao;
		public void saveCustomer(Customer customer) {
			customerDao.saveCustomer(customer);
		}


}
