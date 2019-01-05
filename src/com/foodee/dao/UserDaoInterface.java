package com.foodee.dao;
import java.util.List;

import com.foodee.models.Login;
import com.foodee.models.Users;

/**
 * 
 * Interface for the UserDao
 * 
 * Contains OracleConnection object to interact with database.  
 * @author Chris Medrano
 *
 */

public interface UserDaoInterface {
	//public Users getUserByEmail(String email);
	
	public List<Users> getUsers();

	public void addUser(Users newUser);

	List<Users> validateUser(Login login);

	void updateUser(Users updatedUser);

	Users getUser(int userId);
}
