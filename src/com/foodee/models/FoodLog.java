package com.foodee.models;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "foodlog")
public class FoodLog {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "logId")
	private int logId;
	
	@OneToOne
	@JoinColumn(name="foodId")
	private Food food;
	
	@Column(name = "foodQty")
	private int foodQty;
	
	@Column(name = "logDate")
	private String logDate;
	
	@Column(name = "mealType")
	private String mealType;
	
	@Column(name = "recipeId")
	private int recipeId;
	
	@Column(name = "recipeQty")
	private int recipeQty;
	
	@Column(name = "ingredientId")
	private int ingredientId;
	
	@Column(name = "ingredientQty")
	private int ingredientQty;
	
	@Column(name = "ingredientunit")
	private String ingredientunit;
	
	@Column(name = "userId")
	private int userId;

	public FoodLog() {
		this.logId = 0;
		this.foodQty = 0;
		this.logDate = null;
		this.mealType = null;
		this.recipeId = 0;
		this.recipeQty = 0;
		this.ingredientId = 0;
		this.ingredientQty = 0;
		this.ingredientunit = null;
		this.userId  = 0;
	}
	
	public FoodLog(int logId, int foodQty, String logDate, String mealType, int recipeId,
			int recipeQty, int ingredientId, int ingredientQty, String ingredientunit, Food food, int userId) {
		this.logId = logId;
		this.foodQty = foodQty;
		this.logDate = logDate;
		this.mealType = mealType;
		this.recipeId = recipeId;
		this.recipeQty = recipeQty;
		this.ingredientId = ingredientId;
		this.ingredientQty = ingredientQty;
		this.ingredientunit = ingredientunit;
		this.food = food;
		this.userId  = 0;
	}
	
	public int getLogId() {
		return logId;
	}
	public void setLogId(int logId) {
		this.logId = logId;
	}
	public int getFoodQty() {
		return foodQty;
	}
	public void setFoodQty(int foodQty) {
		this.foodQty = foodQty;
	}
	public String getLogDate() {
		return logDate;
	}
	public void setLogDate(String logDate) {
		this.logDate = logDate;
	}
	public String getMealType() {
		return mealType;
	}
	public void setMealType(String mealType) {
		this.mealType = mealType;
	}
	public int getRecipeId() {
		return recipeId;
	}
	public void setRecipeId(int recipeId) {
		this.recipeId = recipeId;
	}
	public int getRecipeQty() {
		return recipeQty;
	}
	public void setRecipeQty(int recipeQty) {
		this.recipeQty = recipeQty;
	}
	public int getIngredientId() {
		return ingredientId;
	}
	public void setIngredientId(int ingredientId) {
		this.ingredientId = ingredientId;
	}
	public int getIngredientQty() {
		return ingredientQty;
	}
	public void setIngredientQty(int ingredientQty) {
		this.ingredientQty = ingredientQty;
	}
	public String getIngredientunit() {
		return ingredientunit;
	}
	public void setIngredientunit(String ingredientunit) {
		this.ingredientunit = ingredientunit;
	}
	public Food getFood() {
		return food;
	}
	public void setFood(Food food) {
		this.food = food;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "FoodLog [logId=" + logId + ", food=" + food + ", foodQty=" + foodQty + ", logDate=" + logDate
				+ ", mealType=" + mealType + ", recipeId=" + recipeId + ", recipeQty=" + recipeQty + ", ingredientId="
				+ ingredientId + ", ingredientQty=" + ingredientQty + ", ingredientunit=" + ingredientunit + ", userId="
				+ userId + "]";
	}

	
}
