package com.foodee.services;

import java.util.List;

import com.foodee.models.Login;
import com.foodee.models.Users;

public interface UserServiceInterface {

	public List<Users> login(Login login);
	
	public List<Users> getUsers();

	public void addUser(Users newUser);

	public void updateUser(Users user);
	
}
