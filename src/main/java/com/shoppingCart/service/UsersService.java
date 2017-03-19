package com.shoppingCart.service;

import com.shoppingCart.model.Users;

public interface UsersService {
	Users saveUsers(Users users);
Users getUsersById(String username);
}
