package com.foodee.models;

public class WeightLog {
	private int wLogId;
	private String weightLogDate;
	private int weight;
	private int goalWeight;
	private int lossRate;
	private String goalDate;
	private int userId;
	
	public WeightLog() {
		this.wLogId = 0;
		this.weightLogDate = null;
		this.weight = 0;
		this.goalWeight = 0;
		this.lossRate = 0;
		this.goalDate = null;
		this.userId = 0;
	}
	
	public WeightLog(int wLogId, String weightLogDate, int weight, int goalWeight, int lossRate, String goalDate,
			int userId) {
		this.wLogId = wLogId;
		this.weightLogDate = weightLogDate;
		this.weight = weight;
		this.goalWeight = goalWeight;
		this.lossRate = lossRate;
		this.goalDate = goalDate;
		this.userId = userId;
	}
	
	public int getwLogId() {
		return wLogId;
	}
	public void setwLogId(int wLogId) {
		this.wLogId = wLogId;
	}
	public String getWeightLogDate() {
		return weightLogDate;
	}
	public void setWeightLogDate(String weightLogDate) {
		this.weightLogDate = weightLogDate;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getGoalWeight() {
		return goalWeight;
	}
	public void setGoalWeight(int goalWeight) {
		this.goalWeight = goalWeight;
	}
	public int getLossRate() {
		return lossRate;
	}
	public void setLossRate(int lossRate) {
		this.lossRate = lossRate;
	}
	public String getGoalDate() {
		return goalDate;
	}
	public void setGoalDate(String goalDate) {
		this.goalDate = goalDate;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
	
}
