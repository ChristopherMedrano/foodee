package com.foodee.spring.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.foodee.models.Food;
import com.foodee.models.Users;
import com.foodee.services.FoodServiceInterface;
import com.foodee.services.UserServiceInterface;


@Controller
@RequestMapping("admin")
public class AdminController {
	List<Users> userList;
	
	//inject services
	@Autowired
	private UserServiceInterface userService;
	
	@Autowired(required = false)
	private FoodServiceInterface foodService;
	
	//trims white space from fields
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimmer = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmer);
	}
	
	@RequestMapping("/portal")
	public String adminPortal() {
		
		return "admin";
	}
	
	@RequestMapping("/userlist")
	public String listUsers(Model theModel) {
		//get users from userService
		List<Users> userList = userService.getUsers();
		
		//add users to model
		theModel.addAttribute("users", userList);
				
		return "list-users";
	}
	
	@RequestMapping("/foodlist")
	public String listFood(Model theModel) {
		//get users from userService
		List<Food> foodList = foodService.getFoods();
		
		//add users to model
		theModel.addAttribute("foods", foodList);
				
		return "masterFoodList";
	}
	
	/**
	 * Registers new user
	 * @param newUser
	 * @param bindingResults
	 */
	@PostMapping("/addNewUser")
	public String saveCustomer(@Valid @ModelAttribute("user") Users newUser, BindingResult bindingResults) {
		System.out.println("Binding result: " + bindingResults); //for debugging
		
		if(bindingResults.hasErrors()) {
			return "newUserForm";
		} else {
			//save user 
			userService.addUser(newUser);
			return "registrationConfirmation";
		}
	}
	
	
}
