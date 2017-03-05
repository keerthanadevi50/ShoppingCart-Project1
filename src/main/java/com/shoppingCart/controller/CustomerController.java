package com.shoppingCart.controller;

import java.security.Principal;

import javax.management.relation.Role;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoppingCart.model.Authorities;
import com.shoppingCart.model.Users;
import com.shoppingCart.service.AuthoritiesService;
import com.shoppingCart.service.UsersService;

@Controller
public class CustomerController {

	@Autowired
	private UsersService usersService;
	@Autowired
	private AuthoritiesService authoritiesService;

	public CustomerController() {
		System.out.println("INSTANTIATING CUSTOMERCONTROLLER");
	}

	@RequestMapping("/registerCustomer")
	public String registerpage() {

		return "registerCustomer";
	}

	@RequestMapping("/newUsers")
	public String newUsers(@ModelAttribute Users users) {
		usersService.saveUsers(users);
		Authorities authorities = new Authorities();
		authorities.setRole("ROLE_USER");
		authorities.setUsername(users.getUsername());
		authorities.setEnabled(true);
		authoritiesService.saveOrUpdate(authorities);
		
		return "login";
	}
	@RequestMapping(value = "/afterlogin")
	public String login(Principal p ) {
	  
	 String message=null;
	 Authorities authorities=authoritiesService.getRole(p.getusername());
	 System.out.println(role.getRole());
	 if(role.getRole().equals("ROLE_USER")){
		 message="redirect:/useraccount";
	 }
	 else
	 {
		 message="redirect:/admin";
	 }
	 
	
	 
	System.out.println("inside security");
	  return message;

	}

}
