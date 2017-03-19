package com.shoppingCart.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingCart.model.Cart;
import com.shoppingCart.model.Users;
import com.shoppingCart.model.product;
import com.shoppingCart.service.CartService;
import com.shoppingCart.service.ProductService;
import com.shoppingCart.service.UsersService;

@Controller
public class CartController {
	@Autowired
	private ProductService productService;
	@Autowired
	private Cart cart;
	
	@Autowired
	private UsersService userService;
	
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
	public void addtocart(@PathVariable("pid") int pid, Principal principal){
		product pro = productService.getProductById(pid);
		Users users = userService.getUsersById(principal.getName());
		cart.setUserId(users.getId());
		cart.setUserName(principal.getName());
		cart.setProductName(pro.getName());
		cart.setProductId(pro.getPid());
		cart.setPrice(pro.getPrice());
		cart.setQuantity(1);
		cart.setStatus("Pending");
		cart.setTotal(8);
		cart.setDays(6);
		
	
		System.out.println("inside insert cartController");
		cartService.saveOrUpdate(cart);
	}
	
	@RequestMapping("/viewcart")
	public ModelAndView getviewcart(Principal principal){
		ModelAndView mv = new ModelAndView("UserLogin");
		List<Cart> cartList = cartService.getCartByuserName(principal.getName());
		mv.addObject("viewcart", true);
		mv.addObject("cartList", cartList);
		return mv;
		
		
	}

	
	@RequestMapping(value="/viewcart/{cartId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeItemFromCart(@PathVariable("cartId") int cartId)
	{
		cartService.delete(cartId);
	}
	

}


