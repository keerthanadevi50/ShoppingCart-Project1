package com.shoppingCart.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoppingCart.model.Authorities;
import com.shoppingCart.model.BillingAddress;
import com.shoppingCart.model.ShippingAddress;
import com.shoppingCart.model.Users;
import com.shoppingCart.model.product;
import com.shoppingCart.service.AuthoritiesService;
import com.shoppingCart.service.BillingAddressService;
import com.shoppingCart.service.ProductService;
import com.shoppingCart.service.ShippingAddressService;
import com.shoppingCart.service.UsersService;

@Controller
public class CustomerController {

	@Autowired
	private UsersService usersService;

	@Autowired
	private Authorities authorities;

	@Autowired
	private AuthoritiesService authoritiesService;

	@Autowired
	private ShippingAddress shippingAddress;

	@Autowired
	private ShippingAddressService shippingAddressService;

	@Autowired
	private BillingAddress billingAddress;
	@Autowired
	private BillingAddressService billingAddressService;
	@Autowired
	private ProductService productService;

	public CustomerController() {
		System.out.println("INSTANTIATING CUSTOMERCONTROLLER");
	}

	@RequestMapping("/registerCustomer")
	public String registerpage() {

		return "registerCustomer";
	}

	@RequestMapping("/newUsers")
	public String newUsers(@ModelAttribute Users users, @ModelAttribute ShippingAddress shippingAddress, @ModelAttribute BillingAddress billingAddress,Model model) {
		String email=users.getEmail();
		if(usersService.UserAlreadyExist(email, true)){
			model.addAttribute("message", "The entered Email is already registered");
		}
		else {
			
		
		users.setEnabled(true);
		
		authorities.setRole("ROLE_USER");
		authorities.setUsername(users.getUsername());
		
		
		
		
		users.setAuthorities(authorities);
		authorities.setUsers(users);
		
		
		
		
		usersService.saveUsers(users);
		authoritiesService.saveOrUpdate(authorities);
		
		shippingAddress.setId(users.getId());
		billingAddress.setId(users.getId());
		
		 shippingAddressService.saveOrUpdate(shippingAddress);
		billingAddressService.saveOrUpdate(billingAddress);
		
		}
		return "login";
	}

	@RequestMapping(value = "/afterlogin")
	public String afterLogin( Principal p,Model model, @RequestParam(value = "error" , required=false) String error, @RequestParam(value = "logout", required=false)String logout) {
		String username = p.getName();
		Authorities authorities=authoritiesService.get(username);
		String role =authorities.getRole();
		
		if(role.equals("ROLE_USER")){
			model.addAttribute("loginUser",true);
			List<product> productList = productService.getAllProducts();
			model.addAttribute("productList", productList);
			return "UserLogin";
		}
		else if(role.equals("ROLE_ADMIN"))
		{
			model.addAttribute("loginAdmin", true);
			return "AdminLogin";
		}
		else
		{
		return "login";	  
	 
	}
}}