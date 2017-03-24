package com.shoppingCart.controller;

import java.security.Principal;
import java.util.List;
import java.util.Random;

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
	private Users users;
	
	@Autowired
	private UsersService userService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping("productDetails/{id}")
	public String viewProductDetails(@PathVariable ("id") int id, Model model) {
		product pro = productService.getProductById(id);
	
		model.addAttribute("productDetails", true);
		model.addAttribute("product", pro);
		model.addAttribute("loginUser", true);
		return "UserLogin";	  
	 }
	
	
	
	@RequestMapping(value="/addtocart/{pid}" , method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addtocart(@PathVariable("pid") int pid, Principal principal, Model model){
		product pro = productService.getProductById(pid);
		Users users = userService.getUsersById(principal.getName());
		int userId = users.getId();
		Cart crt = cartService.getByUserandProduct(userId, pid);
		if(pro.getQuantity() > 1 ){
			
			Random t = new Random();
			int day = 2 + t.nextInt(7);
			
			if(cartService.itemAlreadyExist(userId, pid, true)){
				
				int qty = crt.getQuantity() + 1;
				crt.setQuantity(qty);
				crt.setTotal(qty * pro.getPrice());
				cartService.saveOrUpdate(crt);
				
			}
			else
			{
		cart.setUserId(userId);
		cart.setUserName(principal.getName());
		cart.setProductName(pro.getName());
		cart.setProductId(pro.getPid());
		cart.setPrice(pro.getPrice());
		cart.setQuantity(1);
		cart.setStatus("Pending");
		cart.setTotal(pro.getPrice()*cart.getQuantity());
		cart.setDays(day);
		
	
		System.out.println("inside insert cartController");
		cartService.saveOrUpdate(cart);
	}
			
			
			
			int Stock = pro.getQuantity() - 1;
			pro.setQuantity(Stock);
			productService.updateProduct(pro);
		}
		else{
			model.addAttribute("message", "Out Of Stock");
		}
		
		
		 
	}

	



			
	
	@RequestMapping("/viewcart")
	public ModelAndView getviewcart(Principal principal){
		ModelAndView mv = new ModelAndView("UserLogin");
		List<Cart> cartList = cartService.getCartByuserName(principal.getName());
	users = userService.getUsersById(principal.getName());
	Long GrandTotal = cartService.getTotalAmount(users.getId());
	
	mv.addObject("GrandTotal", GrandTotal);
		mv.addObject("viewcart", true);
		mv.addObject("cartList", cartList);
		
		return mv;
		
		
	}
	@RequestMapping("delete/{cartId}")
	public String delete(@PathVariable ("cartId") int cartId){
		
		Cart ct = cartService.get(cartId);
		product pr = productService.getProductById(ct.getProductId());
		int qty = pr.getQuantity() + ct.getQuantity();
		
		pr.setQuantity(qty);
		productService.saveProduct(pr);
		
		cartService.delete(cartId);
	
		return "redirect:/viewcart";
	
}
	@RequestMapping("/order/{username}")
	public String placeorder(@PathVariable("username") String username){
	
		return "redirect:/checkout?username"+username;
		
	}

/*
   
	
	@RequestMapping(value="/viewcart/{cartId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeItemFromCart(@PathVariable("cartId") int cartId)
	{
	cartService.delete(cartId);	
	}
	

*/
	
	


}