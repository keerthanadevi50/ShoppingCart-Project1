package com.shoppingCart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.dao.BillingAddressDao;
import com.shoppingCart.model.BillingAddress;
@Service
public class BillingAddressServiceImpl implements BillingAddressService{

	
		
		@Autowired
		private BillingAddressDao billingAddressDao;

		@Transactional
		public List<BillingAddress> list(int id) {
			// TODO Auto-generated method stub
			return billingAddressDao.list(id) ;
		}

		@Transactional
		public BillingAddress get(String username) {
			// TODO Auto-generated method stub
			return billingAddressDao.get(username);
		}

		@Transactional
		public BillingAddress getByBillingId(int BillingId) {
			// TODO Auto-generated method stub
			return billingAddressDao.getByBillingId(BillingId);
		}

		@Transactional
		public void saveOrUpdate(BillingAddress billingAddress) {
			billingAddressDao.saveOrUpdate(billingAddress);
			
			// TODO Auto-generated method stub
			
		}

		@Transactional
		public void delete(int billingId) {
			billingAddressDao.delete(billingId);
			// TODO Auto-generated method stub
			
		}

		@Transactional
		public void editBillingAddress(BillingAddress shippingAddress) {
			// TODO Auto-generated method stub
			
		}
		

}
