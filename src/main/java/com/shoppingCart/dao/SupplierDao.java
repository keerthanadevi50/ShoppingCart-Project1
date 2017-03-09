package com.shoppingCart.dao;

import java.util.List;

import com.shoppingCart.model.Supplier;

public interface SupplierDao {
public List<Supplier> list();
	
	public Supplier get(String id);
	
	public void saveOrUpdate(Supplier supplier);
	
public void delete(String id);


}
