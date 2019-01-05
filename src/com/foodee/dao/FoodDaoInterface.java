package com.foodee.dao;

import java.util.List;

import com.foodee.models.Food;
import com.foodee.models.FoodLog;

public interface FoodDaoInterface {
	
	public List<Food> getMasterFoodList();
	
	public void addFood(Food newFood);

	public List<Food> searchFood(String foodName);

	public void addFoodLog(FoodLog foodLog);

	public List<FoodLog> getFoodLog(int userId);

	public Food getFoodFromLog(int foodlogId);

	public Food getFood(int foodId);

	public void updateFood(Food food);

	public FoodLog getLog(int logId);

	public void updateFoodLog(FoodLog foodlog);

	public void deleteFoodLog(int logId);

	void deleteFood(int foodId);
}
