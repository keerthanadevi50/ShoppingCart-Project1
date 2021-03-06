package com.shoppingCart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoppingCart.model.product;
import com.shoppingCart.service.ProductService;

@Controller
public class HomeController {
@Autowired 
private ProductService productService;	
	
	
	
	public HomeController() {
		System.out.println("INSTANTIATING HOMECONTROLLER");
	}
	
	
	
	@RequestMapping("/home")
	public String home(){
		return "home";
	}
	
	@RequestMapping("/")
	public String getindex(Model model){
		List<product> productList = productService.getAllProducts();
		model.addAttribute("productList", productList);
		return "home";
	}
	
	
	
	@RequestMapping("/aboutUs")
	public String aboutUs(){
		return "aboutUs";
	}
		
		@RequestMapping("/asdfg")
		public String asdfg(@RequestParam(value="error",required=false) String error,@RequestParam(value="logout",required=false) String logout,Model model)
		{
				System.out.println("inside get login");
				 if (error != null) {
						model.addAttribute("error", "Invalid credentials");
					  }
				 if (logout != null) {
						model.addAttribute("logout", "You've been logged out successfully.");
					  }
				
				return "login";
		}
		@RequestMapping("/success")
		public String spage(){
			return "success";
		}
		@RequestMapping("/sidebar")
		public String sidepage(){
			return "sidebar";
		}
		
		
		
		
	
}
	


