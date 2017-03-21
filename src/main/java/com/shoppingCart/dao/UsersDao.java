package com.shoppingCart.dao;

import com.shoppingCart.model.Users;

public interface UsersDao {
public	Users saveUsers (Users users);
public Users getUsersById(String username);
public boolean UserAlreadyExist(String email,boolean b);

}
