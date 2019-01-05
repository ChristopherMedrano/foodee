package com.foodee.models;

public class Recipe {
	private int recipeId;
	private int ingredientId;
	private int foodId;
	private String recipeName;
	private String recipeServing;
	private int recipeOwnerId;
	private String recipeImage;
	
	public Recipe() {
		this.recipeId = 0;
		this.ingredientId = 0;
		this.foodId = 0;
		this.recipeName = null;
		this.recipeServing = null;
		this.recipeOwnerId = 0;
		this.recipeImage = null;
	}
	
	public Recipe(int recipeId, int ingredientId, int foodId, String recipeName, String recipeServing,
			int recipeOwnerId, String recipeImage) {
		this.recipeId = recipeId;
		this.ingredientId = ingredientId;
		this.foodId = foodId;
		this.recipeName = recipeName;
		this.recipeServing = recipeServing;
		this.recipeOwnerId = recipeOwnerId;
		this.recipeImage = recipeImage;
	}
	
	public int getRecipeId() {
		return recipeId;
	}
	public void setRecipeId(int recipeId) {
		this.recipeId = recipeId;
	}
	public int getIngredientId() {
		return ingredientId;
	}
	public void setIngredientId(int ingredientId) {
		this.ingredientId = ingredientId;
	}
	public int getFoodId() {
		return foodId;
	}
	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}
	public String getRecipeName() {
		return recipeName;
	}
	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}
	public String getRecipeServing() {
		return recipeServing;
	}
	public void setRecipeServing(String recipeServing) {
		this.recipeServing = recipeServing;
	}
	public int getRecipeOwnerId() {
		return recipeOwnerId;
	}
	public void setRecipeOwnerId(int recipeOwnerId) {
		this.recipeOwnerId = recipeOwnerId;
	}
	public String getRecipeImage() {
		return recipeImage;
	}
	public void setRecipeImage(String recipeImage) {
		this.recipeImage = recipeImage;
	}
	
	
	
}
