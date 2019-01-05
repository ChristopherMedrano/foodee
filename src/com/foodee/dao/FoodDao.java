package com.foodee.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.foodee.models.Food;
import com.foodee.models.FoodLog;
import com.foodee.models.Users;

@Repository
public class FoodDao implements FoodDaoInterface{
	//inject session factory
	@Autowired
	private SessionFactory sessionFactory;
		
	@Override
	public List<Food> getMasterFoodList() {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//create query -sort by id
		Query<Food> query = thisSession.createQuery("FROM Food", Food.class);
		
		//execute query
		List<Food> foodList = query.getResultList();
		
		return foodList;
	}

	@Override
	public List<Food> searchFood(String foodName) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//create find food name, case insensitive, partial name searches
		Query<Food> query = thisSession.createQuery("FROM Food f where lower(f.foodName) LIKE :name", Food.class);
		query.setParameter("name", "%" + foodName.toLowerCase() + "%");
		System.out.println("\n\n\n\n\n\nThis is the foodName: " + foodName); //debugging
		
		//execute query
		List<Food> foundFoods = query.getResultList();
		System.out.println("Found foods: " + foundFoods); //debugging
		return foundFoods;
	}
	
	@Override
	public void addFoodLog(FoodLog foodLog) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		System.out.println("\n\nFood to add: " + foodLog); //debugging
		//save customer
		thisSession.save(foodLog);
	}
	
	@Override
	public List<FoodLog> getFoodLog(int userId) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//get user of logs
		Users user = thisSession.get(Users.class, userId);
		System.out.println("User loaded: " + user); //debugging
		
		//get user logs
		List<FoodLog> foodLogs = user.getFoodLogs();
		System.out.println("Food logs for user: " + user.getFoodLogs()); //debugging
		
		return foodLogs;
	}
	
	@Override
	public Food getFoodFromLog(int foodlogId) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//get food log
		FoodLog log = thisSession.get(FoodLog.class, foodlogId);
		
		System.out.println("\n\nFoodlog loaded: " + log);//debugging
		
		//get food item
		Food foodItem = log.getFood();
		System.out.println("Food from log: " + log.getFood()); //debugging
		
		return foodItem;
	}
	
	@Override
	public Food getFood(int foodId) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//get food from database
		Food food = thisSession.get(Food.class, foodId);
		
		return food;
	}
	
	@Override
	public void addFood(Food newFood) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//save customer
		thisSession.save(newFood);		
	}

	@Override
	public void updateFood(Food food) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//save customer
		thisSession.update(food);
	}

	@Override
	public FoodLog getLog(int logId) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//get foodlog from database
		FoodLog foodlog = thisSession.get(FoodLog.class, logId);
		
		return foodlog;
	}

	@Override
	public void updateFoodLog(FoodLog foodlog) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//get foodlog from database
		FoodLog foodlogToUpdate = thisSession.get(FoodLog.class, foodlog.getLogId());
		
		foodlogToUpdate.setMealType(foodlog.getMealType());
		foodlogToUpdate.setFoodQty(foodlog.getFoodQty());
	}

	@Override
	public void deleteFoodLog(int logId) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//delete
		Query query = thisSession.createQuery("delete from FoodLog where id=:id");
		query.setParameter("id", logId);
		
		query.executeUpdate();
	}
	
	@Override
	public void deleteFood(int food) {
		//get hibernate session
		Session thisSession = sessionFactory.getCurrentSession();
		
		//delete
		Query query = thisSession.createQuery("delete from Food where id=:id");
		query.setParameter("id", food);
		
		query.executeUpdate();
	}
 
	
}
