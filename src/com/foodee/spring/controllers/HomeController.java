package com.foodee.spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	/**
	 * home page
	 * @return
	 */
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
	
	
}

//@RequestMapping("/")
//public ModelAndView home() {
//	ModelAndView mav = new ModelAndView("");
//	return mav;
//}