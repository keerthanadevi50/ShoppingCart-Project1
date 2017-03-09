package com.shoppingCart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoppingCart.dao.UsersDao;
import com.shoppingCart.model.Users;
@Service
public class UsersServiceImpl implements UsersService {
@Autowired
private UsersDao usersDao;


	public UsersServiceImpl() {
		System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");

	}

	public Users saveUsers(Users users) {
		return usersDao.saveUsers(users);

}
}