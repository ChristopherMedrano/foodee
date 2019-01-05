package com.foodee.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.foodee.dao.UserDaoInterface;
import com.foodee.models.Login;
import com.foodee.models.Users;

@Service
public class UserService implements UserServiceInterface {
	
	//inject userDao
	@Autowired
	private UserDaoInterface userDao;
	
	@Override
	@Transactional
	public List<Users> login(Login login) {
		return userDao.validateUser(login);
	}
	
	@Override
	@Transactional
	public List<Users> getUsers() {
		return userDao.getUsers();
	}

	@Override
	@Transactional
	public void addUser(Users newUser) {
		userDao.addUser(newUser);
	}
	
	@Override
	@Transactional
	public void updateUser(Users user) {
		userDao.updateUser(user);
	}

}
