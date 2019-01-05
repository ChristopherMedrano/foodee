package com.foodee.models;

public class CaloriePerGram {
	private int calorieId;
	private int foodId;
	private int proteinPerGram;
	private int carbPerGram;
	private int fatPerGram;
	
	public CaloriePerGram() {
		this.calorieId = 0;
		this.foodId = 0;
		this.proteinPerGram = 0;
		this.carbPerGram = 0;
		this.fatPerGram = 0;
	}
	
	public CaloriePerGram(int calorieId, int foodId, int proteinPerGram, int carbPerGram, int fatPerGram) {
		this.calorieId = calorieId;
		this.foodId = foodId;
		this.proteinPerGram = proteinPerGram;
		this.carbPerGram = carbPerGram;
		this.fatPerGram = fatPerGram;
	}
	
	public int getCalorieId() {
		return calorieId;
	}
	public void setCalorieId(int calorieId) {
		this.calorieId = calorieId;
	}
	public int getFoodId() {
		return foodId;
	}
	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}
	public int getProteinPerGram() {
		return proteinPerGram;
	}
	public void setProteinPerGram(int proteinPerGram) {
		this.proteinPerGram = proteinPerGram;
	}
	public int getCarbPerGram() {
		return carbPerGram;
	}
	public void setCarbPerGram(int carbPerGram) {
		this.carbPerGram = carbPerGram;
	}
	public int getFatPerGram() {
		return fatPerGram;
	}
	public void setFatPerGram(int fatPerGram) {
		this.fatPerGram = fatPerGram;
	}
}
