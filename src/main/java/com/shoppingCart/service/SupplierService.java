package com.shoppingCart.service;

import java.util.List;

import com.shoppingCart.model.Supplier;

public interface SupplierService {

public List<Supplier> list();
	
	public Supplier get(String id);
	
	public void saveOrUpdate(Supplier category);
	
public void delete(String id);

}
