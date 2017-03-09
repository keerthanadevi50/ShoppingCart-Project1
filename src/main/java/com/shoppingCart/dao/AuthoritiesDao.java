package com.shoppingCart.dao;

import java.util.List;

import com.shoppingCart.model.Authorities;

public interface AuthoritiesDao {
	public Authorities get(String username);

	public List<Authorities> list();
	public Authorities getRole(String username);
	
	public void saveOrUpdate(Authorities authorities);
		
	

}
