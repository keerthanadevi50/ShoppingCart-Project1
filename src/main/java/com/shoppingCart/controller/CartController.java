package com.shoppingCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.shoppingCart.model.Cart;
import com.shoppingCart.model.product;
import com.shoppingCart.service.CartService;
import com.shoppingCart.service.ProductService;

@Controller
public class CartController {
	@Autowired
	private ProductService productService;
	@Autowired
	private Cart cart;
	@Autowired
	private CartService cartService;
	
	@RequestMapping("productDetails/{id}")
	public String viewProductDetails(@PathVariable ("id") int id, Model model) {
		product pro = productService.getProductById(id);
		
		model.addAttribute("productDetails", true);
		model.addAttribute("product", pro);
		return "users";	  
	 }
	@RequestMapping(value="/addtocart/{pid}" , method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addtocart(@PathVariable("pid") int pid){
		product p = productService.getProductById(pid);
		
		cart.setProductName(p.getName());
		cart.setProductId(p.getPid());
		cart.setPrice(p.getPrice());
		cart.setQuantity(1);
		System.out.println("inside insert cartController");
		cartService.saveOrUpdate(cart);
	}
	

}


