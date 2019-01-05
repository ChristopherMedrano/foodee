package com.foodee.spring.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.foodee.models.Food;
import com.foodee.models.FoodLog;
import com.foodee.models.Login;
import com.foodee.models.Users;
import com.foodee.services.FoodServiceInterface;
import com.foodee.services.UserServiceInterface;

@Controller
@RequestMapping("/users")
@SessionAttributes("user")
public class UsersController {
	
	//inject user service
	@Autowired
	private UserServiceInterface userService;
	
	@Autowired(required = false)
	private FoodServiceInterface foodService;
	
	//declare user bean 
		@ModelAttribute("user")
		public Users user() {
			return new Users();
		}
		
	//trims white space from fields
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimmer = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmer);
	}
		
	/**
	 * Shows login in form
	 * @param request
	 * @param response
	 */
	@GetMapping("/login")
	public ModelAndView userLogin(@ModelAttribute("login") Login login) {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	/**
	 * Validates user login info and returns home page
	 * @param login
	 * @param model
	 */
	@PostMapping("/authenticateUser")
	public String userHome(@ModelAttribute("login") Login login, Model model, HttpSession session) {
		
		//get users from userService
		List<Users> authUsers = userService.login(login);
		System.out.println("\n\nAuthenticated Users: " + authUsers); //debugging
	
		//if logged in send home, else send to log in
		if(authUsers.size() != 0) {
			//sets user to user model attribute in session 
			model.addAttribute("user", authUsers.get(0)) ;
			session.setAttribute("userSession", authUsers.get(0));
			System.out.println("\n\nLog in user info: " + authUsers.get(0)); //debugging
			return "userPortal";
		}else {
			return "/login";
		}
	}
	
	/**
	 * New user registration form
	 * @param newUser
	 * @return newUserForm.jsp
	 */
	@GetMapping("/registrationForm")
	public String showFormForAdd(@ModelAttribute("user") Users newUser) {
		return "newUserForm";
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
			return "userPortal";
		}
	}
	
	@GetMapping("/profile")
	public String getProfile(@ModelAttribute("user") Users user) {
		
		if(user.getUserId() != 0){
			return "userProfile";
		} else {
			return "redirect:login";
		}
	}
	
	/**
	 * Returns update user page
	 * @param user
	 * @return
	 */
	@GetMapping("/update")
	public String updateProfile(@ModelAttribute("user") Users user) {
		if(user.getUserId() != 0){
			return "updateProfile";
		} else {
			return "redirect:login";
		}
	}
	
	
	@PostMapping("/updateUser")
	public String updateUser(@ModelAttribute("user") Users user) {
		
		userService.updateUser(user);
		
		return "redirect:profile";
	}
	
	/**
	 * If logged in returns Users home page 
	 * If not logged in returns login screen
	 * @param user
	 */
	@GetMapping("/home")
	public String getHome(@ModelAttribute("user") Users user) {
		System.out.println("\n\nUser info: " + (user)); //debugging
		
		if(user.getUserId() != 0){
			return "userPortal";
		} else {
			return "redirect:/users/login";
		}
	}
	
	//--------------------------------------------------------------------------
	
	
	/**
	 * New user registration form
	 * @param newUser
	 * @return newUserForm.jsp
	 */
	@GetMapping("/foodlog")
	public String getFoodLog(@ModelAttribute("user") Users user, Model model) {
		//check if logged in 
		if(user.getUserId() !=0) {
			//get breakfast
			List<FoodLog> allFoodLogs = foodService.getAllFoodLogs(user.getUserId());
			
			System.out.println("Outside display method"); //debugging
			foodService.displayFoodLogs(allFoodLogs, model);
					
			//get all foods
			List<Food> foodList = foodService.getFoods();
			model.addAttribute("foods", foodList);
			
			return "foodlog";
		}else {
			return "redirect:login";
		}
	}
	
	/**
	 * Brings up form to add to breakfast
	 * @param newUser
	 * @return newUserForm.jsp
	 */
	@GetMapping("/addToBreakfast")
	public String addToBreakfast(Model model) {
		return "addToBreakfast";
	}
	
	/**
	 * Brings search results
	 * @param newUser
	 * @return newUserForm.jsp
	 */
	@RequestMapping(value = "/searchFood", method = RequestMethod.GET)
	public String addBFoods(@RequestParam("foodName") String foodName, Model model) {
		//!!!!!!!!!! FIX TO USER ID IS REQUIRED, TIMEOUT IS CAUSING ISSUES
		
		//get search results
		List<Food> searchResults = foodService.searchFood(foodName);
		System.out.println("\n\nSearch results: " + searchResults);
		model.addAttribute("searchResults", searchResults);
		
		//create food log
		model.addAttribute("foodLog", new FoodLog());
		
		return "foodSearchResults";
	}
	
	/**
	 * Adds food to foodlog
	 * @param newUser
	 * @param bindingResults
	 */
	@RequestMapping("/insertLog")
	public String insertLog(@ModelAttribute("foodLog") FoodLog foodlog) {
		//save log
		foodService.addFoodLog(foodlog);
		
		return "redirect:foodlog";
	}
	
	/**
	 * New user registration form
	 * @param newUser
	 * @return newUserForm.jsp
	 */
	@GetMapping("/addFoodForm")
	public String newFoodForm(@ModelAttribute("food") Food newFood) {
		return "newFoodForm";
	}
	
	/**
	 * Registers new user
	 * @param newUser
	 * @param bindingResults
	 */
	@PostMapping("/addFood")
	public String addFood(@Valid @ModelAttribute("food") Food newFood, BindingResult bindingResults) {
		System.out.println("Binding result: " + bindingResults); //for debugging
		
		if(bindingResults.hasErrors()) {
			return "newFoodForm";
		} else {
			//save food 
			foodService.addFood(newFood);
			return "redirect:foodlog";
		}
	}
	
	/**
	 * Returns update user page
	 * @param user
	 * @return
	 */
	@GetMapping("/updateFoodForm")
	public String updateFoodForm(@RequestParam("foodId") int foodId, Model model) {
		Food food = foodService.getFood(foodId);
		model.addAttribute("food", food);
		
		return "updateFoodForm";
	}
	
	@PostMapping("/updateFood")
	public String updateFood(@ModelAttribute("food") Food food) {
		
		foodService.updateFood(food);
		
		return "redirect:foodlog";
	}
	
	/**
	 * Edit food log form
	 * @param user
	 * @return
	 */
	@GetMapping("/updateFoodLogForm")
	public String updateFoodLogForm(@RequestParam("logId") int logId, Model model) {
		FoodLog foodLog = foodService.getFoodLog(logId);
		model.addAttribute("foodLog", foodLog);
		
		return "updateFoodLog";
	}
	
	/**
	 * Process the update to food log
	 * @param foodlog
	 * @return
	 */
	@PostMapping("/updateFoodLog")
	public String updateFoodLog(@ModelAttribute("foodLog") FoodLog foodlog) {
		System.out.println("\n\n\nFood log we are updating: " + foodlog);
		foodService.updateFoodLog(foodlog);
		
		return "redirect:foodlog";
	}
	
	@GetMapping("/deleteFoodLog")
	public String deleteLog(@RequestParam("logId") int logId) {
		foodService.deleteLog(logId);
		return "redirect:foodlog";
	}
	
	@GetMapping("/deleteFood")
	public String deleteFood(@RequestParam("foodId") int foodId) {
		foodService.deleteFood(foodId);
		return "redirect:${pageContext.request.contextPath}/admin/foodlist";
	}
	
	//bootstrap debugging page
	@GetMapping("/bootstrap")
	public String getBootstrap() {
		return "bootstrap";
	}
}
