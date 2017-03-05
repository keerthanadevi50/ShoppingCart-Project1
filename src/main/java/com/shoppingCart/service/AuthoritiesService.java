package com.shoppingCart.service;

import java.util.List;

import com.shoppingCart.model.Authorities;

public interface AuthoritiesService {
	public Authorities get(String username);

	public List<Authorities> list();	
	
	public void saveOrUpdate(Authorities authorities);
		
	


}
