package com.shoppingCart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoppingCart.dao.AuthoritiesDao;
import com.shoppingCart.model.Authorities;
@Service
public class AuthoritiesServiceImpl implements AuthoritiesService {
	@Autowired
	private AuthoritiesDao authoritiesDao;
	
	
	public Authorities get(String username) {
		return authoritiesDao.get(username)  ;
	}

	public List<Authorities> list() {
		return authoritiesDao.list();
	}	
	
	public void saveOrUpdate(Authorities authorities) {
		 authoritiesDao.saveOrUpdate(authorities);
	}

	@Override
	public Authorities getRole(String username) {
		// TODO Auto-generated method stub
		return authoritiesDao.getRole(username);
	}

	
	

}
