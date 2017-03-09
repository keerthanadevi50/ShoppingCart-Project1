package com.shoppingCart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.dao.ShippingAddressDao;
import com.shoppingCart.model.ShippingAddress;
@Service
public class ShippingAddressServiceImpl implements ShippingAddressService {
	
	@Autowired
	private ShippingAddressDao shippingAddressDao;

	@Transactional
	public List<ShippingAddress> list(int id) {
		// TODO Auto-generated method stub
		return shippingAddressDao.list(id) ;
	}

	@Transactional
	public ShippingAddress get(String username) {
		// TODO Auto-generated method stub
		return shippingAddressDao.get(username);
	}

	@Transactional
	public ShippingAddress getByShippingId(int ShippingId) {
		// TODO Auto-generated method stub
		return shippingAddressDao.getByShippingId(ShippingId);
	}

	@Transactional
	public void saveOrUpdate(ShippingAddress shippingAddress) {
		shippingAddressDao.saveOrUpdate(shippingAddress);
		
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void delete(int shippingId) {
		shippingAddressDao.delete(shippingId);
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void editShippingAddress(ShippingAddress shippingAddress) {
		// TODO Auto-generated method stub
		
	}
	
	

}
