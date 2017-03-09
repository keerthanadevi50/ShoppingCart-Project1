package com.shoppingCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoppingCart.model.product;
import com.shoppingCart.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	
	public ProductController() {
		System.out.println("INSTANTIATING PRODUCTCONTROLLER");
	}
	@RequestMapping("/productform")
	public String productpage() {

		return "productform";
	}

	@RequestMapping("/addproduct")
	public String addproduct(@ModelAttribute product pro) {
		productService.saveProduct(pro);
		return "login";
	}


}
