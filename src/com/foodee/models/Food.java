package com.foodee.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
@Table(name = "food")
public class Food {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "foodId")
	private Integer foodId;

	@NotNull(message = "required")
	@Size(min = 1, message = "required")
	@Column(name = "foodName")
	private String foodName;

	@Column(name = "foodGroup")
	private String foodGroup;

//	@NotNull(message = "required")
//	@Size(min = 1, message = "required")
	@Column(name = "calories")
	private Integer calories;
	
	@Column(name = "totalFat")
	private Integer totalFat;
	
	@Column(name = "saturatedFat")
	private Integer saturatedFat;
	
	@Column(name = "transFat")
	private Integer transFat;
	
	@Column(name = "monoUnsatFat")
	private Integer monoUnsatFat;
	
	@Column(name = "cholesterol")
	private Integer cholesterol;
	
	@Column(name = "sodium")
	private Integer sodium;
	
	@Column(name = "totalCarbs")
	private Integer totalCarbs;
	
	@Column(name = "fiber")
	private Integer fiber;
	
	@Column(name = "sugars")
	private Integer sugars;
	
	@Column(name = "protein")
	private Integer protein;
	
	@Column(name = "calcium")
	private Integer calcium;
	
	@Column(name = "iron")
	private Integer iron;
	
	@Column(name = "potassium")
	private Integer potassium;
	
	@Column(name = "servingsize")
	private Integer servingsize;
	
	@Column(name = "servingunit")
	private String servingunit;

	public Food() {
		this.foodId = 0;
		this.foodName = null;
		this.foodGroup = null;
		this.calories = 0;
		this.totalFat = 0;
		this.saturatedFat = 0;
		this.transFat = 0;
		this.monoUnsatFat = 0;
		this.cholesterol = 0;
		this.sodium = 0;
		this.totalCarbs = 0;
		this.fiber = 0;
		this.sugars = 0;
		this.protein = 0;
		this.calcium = 0;
		this.iron = 0;
		this.potassium = 0;
		this.servingsize = 0;
		this.servingunit = null;
	}

	public Food(Integer foodId, String foodName, String foodGroup, Integer calories, Integer totalFat, Integer saturatedFat,
			Integer transFat, Integer monoUnsatFat, Integer cholesterol, Integer sodium, Integer totalCarbs, Integer fiber, Integer sugars,
			Integer protein, Integer calcium, Integer iron, Integer potassium, Integer servingsize, String servingunit) {
		super();
		this.foodId = foodId;
		this.foodName = foodName;
		this.foodGroup = foodGroup;
		this.calories = calories;
		this.totalFat = totalFat;
		this.saturatedFat = saturatedFat;
		this.transFat = transFat;
		this.monoUnsatFat = monoUnsatFat;
		this.cholesterol = cholesterol;
		this.sodium = sodium;
		this.totalCarbs = totalCarbs;
		this.fiber = fiber;
		this.sugars = sugars;
		this.protein = protein;
		this.calcium = calcium;
		this.iron = iron;
		this.potassium = potassium;
		this.servingsize = servingsize;
		this.servingunit = servingunit;
	}

	public Integer getFoodId() {
		return foodId;
	}

	public void setFoodId(Integer foodId) {
		this.foodId = foodId;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public String getFoodGroup() {
		return foodGroup;
	}

	public void setFoodGroup(String foodGroup) {
		this.foodGroup = foodGroup;
	}

	public Integer getCalories() {
		return calories;
	}

	public void setCalories(Integer calories) {
		this.calories = calories;
	}

	public Integer getTotalFat() {
		return totalFat;
	}

	public void setTotalFat(Integer totalFat) {
		this.totalFat = totalFat;
	}

	public Integer getSaturatedFat() {
		return saturatedFat;
	}

	public void setSaturatedFat(Integer saturatedFat) {
		this.saturatedFat = saturatedFat;
	}

	public Integer getTransFat() {
		return transFat;
	}

	public void setTransFat(Integer transFat) {
		this.transFat = transFat;
	}

	public Integer getMonoUnsatFat() {
		return monoUnsatFat;
	}

	public void setMonoUnsatFat(Integer monoUnsatFat) {
		this.monoUnsatFat = monoUnsatFat;
	}

	public Integer getCholesterol() {
		return cholesterol;
	}

	public void setCholesterol(Integer cholesterol) {
		this.cholesterol = cholesterol;
	}

	public Integer getSodium() {
		return sodium;
	}

	public void setSodium(Integer sodium) {
		this.sodium = sodium;
	}

	public Integer getTotalCarbs() {
		return totalCarbs;
	}

	public void setTotalCarbs(Integer totalCarbs) {
		this.totalCarbs = totalCarbs;
	}

	public Integer getFiber() {
		return fiber;
	}

	public void setFiber(Integer fiber) {
		this.fiber = fiber;
	}

	public Integer getSugars() {
		return sugars;
	}

	public void setSugars(Integer sugars) {
		this.sugars = sugars;
	}

	public Integer getProtein() {
		return protein;
	}

	public void setProtein(Integer protein) {
		this.protein = protein;
	}

	public Integer getCalcium() {
		return calcium;
	}

	public void setCalcium(Integer calcium) {
		this.calcium = calcium;
	}

	public Integer getIron() {
		return iron;
	}

	public void setIron(Integer iron) {
		this.iron = iron;
	}

	public Integer getPotassium() {
		return potassium;
	}

	public void setPotassium(Integer potassium) {
		this.potassium = potassium;
	}
	public Integer getServingsize() {
		return servingsize;
	}
	public void setServingsize(Integer servingsize) {
		this.servingsize = servingsize;
	}
	public String getServingunit() {
		return servingunit;
	}
	public void setServingunit(String servingunit) {
		this.servingunit = servingunit;
	}

	@Override
	public String toString() {
		return "Food [foodId=" + foodId + ", foodName=" + foodName + ", foodGroup=" + foodGroup + ", calories="
				+ calories + ", totalFat=" + totalFat + ", saturatedFat=" + saturatedFat + ", transFat=" + transFat
				+ ", monoUnsatFat=" + monoUnsatFat + ", cholesterol=" + cholesterol + ", sodium=" + sodium
				+ ", totalCarbs=" + totalCarbs + ", fiber=" + fiber + ", sugars=" + sugars + ", protein=" + protein
				+ ", calcium=" + calcium + ", iron=" + iron + ", potassium=" + potassium + ", servingsize="
				+ servingsize + ", servingunit=" + servingunit + "]";
	}

	

}
