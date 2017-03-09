package com.shoppingCart.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.shoppingCart.model.BillingAddress;
@Service
public interface BillingAddressService {
	public List<BillingAddress> list(int id);
	
	public BillingAddress get(String username);

	public BillingAddress getByBillingId(int BillingId);
	
	public void saveOrUpdate(BillingAddress shippingAddress);
	
	public void delete(int billingId);
	
	public void editBillingAddress(BillingAddress billingAddress);
	


}
