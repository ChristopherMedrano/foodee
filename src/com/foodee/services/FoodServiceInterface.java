package com.foodee.services;

import java.util.List;

import org.springframework.ui.Model;

import com.foodee.models.Food;
import com.foodee.models.FoodLog;

public interface FoodServiceInterface {
	public List<Food> getFoods();

	public void addFood(Food newFood);

	public List<Food> searchFood(String foodName);

	public void addFoodLog(FoodLog foodLog);

	public List<FoodLog> getAllFoodLogs(int userId);

	public Food getFoodFromLog(int foodlogId);
	
	public Food getFood(int foodId);

	public void updateFood(Food food);

	public FoodLog getFoodLog(int logId);

	public void updateFoodLog(FoodLog foodlog);

	public void displayFoodLogs(List<FoodLog> allFoodLogs, Model model);

	public void deleteLog(int logId);

	void deleteFood(int foodId);
	
}
