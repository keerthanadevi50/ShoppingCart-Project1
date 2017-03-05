package com.shoppingCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoppingCart.model.category;
import com.shoppingCart.service.CategoryService;


@Controller
public class HomeController {
	
	
	@Autowired
	private CategoryService categoryService;
	
	
	public HomeController() {
		System.out.println("INSTANTIATING HOMECONTROLLER");
	}
	@RequestMapping("addProduct")
	public String getaddProduct(@RequestParam("name") String name){
		System.out.println(name);
		return "aboutUs";
	}
	
	
	@RequestMapping("/home")
	public String home(){
		return "home";
	}
	
	@RequestMapping("/")
	public String getindex(){
		return "home";
	}
	@RequestMapping("/newCategory")
	public String newCategory(@ModelAttribute category cat){
		categoryService.update(cat);
		return "productform";
	}
	
	
	@RequestMapping("/aboutUs")
	public String aboutUs(){
		return "aboutUs";
	}
		
		@RequestMapping("/login")
		public String login(){
			return "login";
		}
		
		
	
}
	


