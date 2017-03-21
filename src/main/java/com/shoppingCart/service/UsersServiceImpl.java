package com.shoppingCart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.dao.UsersDao;
import com.shoppingCart.model.Users;
@Service
public class UsersServiceImpl implements UsersService {
@Autowired
private UsersDao usersDao;


	public UsersServiceImpl() {
		System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");

	}
@Transactional
	public Users saveUsers(Users users) {
		return usersDao.saveUsers(users);

}


	@Transactional
	public Users getUsersById(String username) {
		// TODO Auto-generated method stub
		return usersDao.getUsersById(username);
	}
	@Transactional
	public boolean UserAlreadyExist(String email, boolean b) {
		// TODO Auto-generated method stub
		return usersDao.UserAlreadyExist(email, b);
	}
}