package com.foodee.spring.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foodee.models.Food;
import com.foodee.models.Users;
import com.foodee.services.FoodServiceInterface;

@Controller
@RequestMapping("food")
public class FoodController {
	
	@Autowired(required = false)
	private FoodServiceInterface foodService;
	
	/**
	 * Get food master list
	 * @param theModel
	 * @return
	 */
	@RequestMapping("/foodlist")
	public String listFood(Model theModel) {
		//get users from userService
		List<Food> foodList = foodService.getFoods();
		
		//add users to model
		theModel.addAttribute("foods", foodList);
				
		return "masterFoodList";
	}
	
	
	
}
