package com.foodee.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.foodee.models.Login;
import com.foodee.models.Users;

@Repository
public class UserDao implements UserDaoInterface{
	//inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Users> validateUser(Login login) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//create query 
		Query<Users> query = thisSession.createQuery("FROM Users u where u.email = :email AND u.password = :password", Users.class).setProperties(login);
		
		//execute query
		List<Users> authUser = query.getResultList();
		
		return authUser;
	}
	
	@Override
	public List<Users> getUsers() {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//create query -sort by id
		Query<Users> query = thisSession.createQuery("from Users order by lastName", Users.class);
		
		//execute query
		List<Users> userList = query.getResultList();
		
		return userList;
	}

	@Override
	public Users getUser(int userId) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//get user from db
		Users user = thisSession.get(Users.class, userId);
		
		return user;
	}
	
	@Override
	public void addUser(Users newUser) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//save customer
		thisSession.save(newUser);
	}
	
	@Override
	public void updateUser(Users user) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//save customer
		thisSession.update(user);
	}
	
	
	
	
	/**
	 * This method queries the database for a user based on email address
	 * 
	 * @param	email		email address of the student
	 * @return 	student 	the student that matches the queried email address 
	 * 
	 */
//	@Override
//	public Users getUserByEmail(String email) {
//		Users user = new Users();
//		String query = "SELECT * FROM users WHERE email = ?";
//		
//		try {
//			conn = oc.getConnection();
//			ps = conn.prepareStatement(query);
//			ps.setString(1, email);
//			rs = ps.executeQuery();
//			if(rs.next()) {
//				user = new Users(rs.getInt(1), rs.getString(2), rs.getString(3), 
//						rs.getString(4), rs.getString(5), rs.getInt(6), 
//						rs.getInt(7), rs.getString(8), rs.getString(9), 
//						rs.getInt(10), rs.getInt(11));
//			}
//		} catch (SQLException e){
//			e.printStackTrace();
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		} finally {
//			this.dispose();
//		}
//		
//		return user;
//	}
	
	/**
	 * 
	 * This method queries the database for a user based on email address
	 * 
	 * @param	email		email address of the student
	 * @return 	student 	the student that matches the queried email address 
	 * 
	 */
	
	
	
	
//	public static void main(String[] args) {
//		UserDao uDao = new UserDao();
//		
////		Users userByEmail = uDao.getUserByEmail("email");
//		
////		System.out.println("User id: " + userByEmail.getUserId());
////		System.out.println("Email: " + userByEmail.getEmail());
////		System.out.println("Password: " + userByEmail.getPassword());
////		System.out.println("First Name: " + userByEmail.getFirstName());
////		System.out.println("Last Name: " + userByEmail.getLastName());
////		System.out.println("DOB: " + userByEmail.getDob());
////		System.out.println("Unit Pref: " + userByEmail.getUnitPreference());
////		System.out.println("Height: " + userByEmail.getHeight());
//		
//		Login login = new Login("EMAIL", "PASS");
//		Users user = uDao.validateUser(login);
//		
//		if(user.getUserId() != 0) {
//			System.out.println("user is not null");
//			
//			System.out.println("User id: " + user.getUserId());
//			System.out.println("Email: " + user.getEmail());
//			System.out.println("Password: " + user.getPassword());
//			System.out.println("First Name: " + user.getFirstName());
//			System.out.println("Last Name: " + user.getLastName());
//			System.out.println("DOB: " + user.getDob());
//			System.out.println("Unit Pref: " + user.getUnitPreference());
//			System.out.println("Height: " + user.getHeight());
//			System.out.println("Gender: " + user.getGender());
//			
//			
//		} else {
//			System.out.println("user is null");
//		}
//	}

	
}
