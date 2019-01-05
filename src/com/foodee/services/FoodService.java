package com.foodee.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.foodee.dao.FoodDaoInterface;
import com.foodee.models.Food;
import com.foodee.models.FoodLog;

@Service
public class FoodService implements FoodServiceInterface {
	//inject foodDao
	@Autowired
	private FoodDaoInterface foodDao;
	
	@Override
	@Transactional
	public List<Food> getFoods() {
		return foodDao.getMasterFoodList();
	}
	
	@Override
	@Transactional
	public void addFood(Food newFood) {
		foodDao.addFood(newFood);
	}
	
	@Override
	@Transactional
	public List<Food> searchFood(String foodName) {
		//if search strin is not empty search food name, else return all foods
		if(foodName != null && foodName.trim().length() > 0) {
			return foodDao.searchFood(foodName);
		} else {
			return foodDao.getMasterFoodList();
		}
	}
	
	@Override
	@Transactional
	public void addFoodLog(FoodLog foodLog) {
		foodDao.addFoodLog(foodLog);
	}
	
	@Override
	@Transactional
	public List<FoodLog> getAllFoodLogs(int userId) {
		return foodDao.getFoodLog(userId);
	}
	
	@Override
	@Transactional
	public Food getFoodFromLog(int foodlogId) {
		return foodDao.getFoodFromLog(foodlogId);
	}

	@Override
	@Transactional
	public Food getFood(int foodId) {
		return foodDao.getFood(foodId);
	}

	@Override
	@Transactional
	public void updateFood(Food food) {
		foodDao.updateFood(food);
	}

	@Override
	@Transactional
	public FoodLog getFoodLog(int logId) {
		return foodDao.getLog(logId);
	}

	@Override
	@Transactional
	public void updateFoodLog(FoodLog foodlog) {
		foodDao.updateFoodLog(foodlog);
	}

	@Override
	public void displayFoodLogs(List<FoodLog> allFoodLogs, Model model) {
		List<FoodLog> bLogs = new ArrayList<FoodLog>();
		List<FoodLog> lunchLogs = new ArrayList<FoodLog>();
		List<FoodLog> dinnerLogs = new ArrayList<FoodLog>();
		List<FoodLog> snackLog = new ArrayList<FoodLog>();
		
		System.out.println("Inside display methods"); //debugging
		for(FoodLog fl : allFoodLogs) {
			System.out.println("Mealtypes: " + fl.getMealType());
			
			if(fl.getMealType().equals("breakfast")) {
				System.out.println("Log added to breakfast: " + fl); //debugging
				bLogs.add(fl);
			} else if (fl.getMealType().equals("lunch")) {
				System.out.println("Log added to lunch: " + fl); //debugging
				lunchLogs.add(fl);
			} else if (fl.getMealType().equals("dinner")) {
				System.out.println("Log added to dinner: " + fl); //debugging
				dinnerLogs.add(fl);
			} else if (fl.getMealType().equals("snack")) {
				System.out.println("Log added to snack: " + fl); //debugging
				snackLog.add(fl);
			} else {
				// ignore
			}
			
			model.addAttribute("breakfastLog", bLogs);
			model.addAttribute("lunchLog", lunchLogs);
			model.addAttribute("dinnerLog", dinnerLogs);
			model.addAttribute("snackLog", snackLog);
		}
	}

	@Override
	@Transactional
	public void deleteLog(int logId) {
		foodDao.deleteFoodLog(logId);
	}
	
	@Override
	@Transactional
	public void deleteFood(int foodId) {
		foodDao.deleteFood(foodId);
	}


}
