package com.foodee.models;

public class Ingredient {
	private int ingredientId;
	private String ingredientName;
	
	public Ingredient() {
		this.ingredientId = 0;
		this.ingredientName = null;
	}
	public Ingredient(int ingredientId, String ingredientName) {
		this.ingredientId = ingredientId;
		this.ingredientName = ingredientName;
	}

	public int getIngredientId() {
		return ingredientId;
	}
	public void setIngredientId(int ingredientId) {
		this.ingredientId = ingredientId;
	}
	public String getIngredientName() {
		return ingredientName;
	}
	public void setIngredientName(String ingredientName) {
		this.ingredientName = ingredientName;
	}
	
}
