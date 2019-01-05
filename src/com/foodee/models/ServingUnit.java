package com.foodee.models;

public class ServingUnit {
	private int suId;
	private int oz;
	private int fluidOz;
	private int cups;
	private int grams;
	private int servingSizeId;
	
	public ServingUnit(int suId, int oz, int fluidOz, int cups, int grams, int servingSizeId) {
		this.suId = suId;
		this.oz = oz;
		this.fluidOz = fluidOz;
		this.cups = cups;
		this.grams = grams;
		this.servingSizeId = servingSizeId;
	}
	
	public ServingUnit() {
		this.suId = 0;
		this.oz = 0;
		this.fluidOz = 0;
		this.cups = 0;
		this.grams = 0;
		this.servingSizeId = 0;
	}
	
	public int getSuId() {
		return suId;
	}
	public void setSuId(int suId) {
		this.suId = suId;
	}
	public int getOz() {
		return oz;
	}
	public void setOz(int oz) {
		this.oz = oz;
	}
	public int getFluidOz() {
		return fluidOz;
	}
	public void setFluidOz(int fluidOz) {
		this.fluidOz = fluidOz;
	}
	public int getCups() {
		return cups;
	}
	public void setCups(int cups) {
		this.cups = cups;
	}
	public int getGrams() {
		return grams;
	}
	public void setGrams(int grams) {
		this.grams = grams;
	}
	public int getServingSizeId() {
		return servingSizeId;
	}
	public void setServingSizeId(int servingSizeId) {
		this.servingSizeId = servingSizeId;
	}
	
}
