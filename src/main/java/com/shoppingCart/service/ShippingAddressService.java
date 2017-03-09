package com.shoppingCart.service;

import java.util.List;

import com.shoppingCart.model.ShippingAddress;

public interface ShippingAddressService {
	
		
		public List<ShippingAddress> list(int id);
		
		public ShippingAddress get(String username);
	
		public ShippingAddress getByShippingId(int ShippingId);
		
		public void saveOrUpdate(ShippingAddress shippingAddress);
		
		public void delete(int shippingId);
		
		public void editShippingAddress(ShippingAddress shippingAddress);
		

	}


