package com.shoppingCart.dao;

import java.util.List;

import com.shoppingCart.model.BillingAddress;

public interface BillingAddressDao {
	public List<BillingAddress> list(int id);
	
	public BillingAddress get(String username);
	
	
	
	public BillingAddress getByBillingId(int BillingId);
	
	public void saveOrUpdate(BillingAddress billingAddress);
	
	public void delete(int billingId);
	
	public void editBillingAddress(BillingAddress billingAddress);
	

}
