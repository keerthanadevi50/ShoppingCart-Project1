package com.shoppingCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoppingCart.model.BillingAddress;
import com.shoppingCart.model.ShippingAddress;
import com.shoppingCart.service.BillingAddressService;
import com.shoppingCart.service.ShippingAddressService;

@Controller
	public class PaymentController {
		@Autowired
		private BillingAddressService billingAddressService;
		@Autowired
		private ShippingAddressService shippingAddressService;
		public PaymentController(){
			System.out.println("INSTANTIATING PAYMENTCONTROLLER");
		}
		@RequestMapping("/newbillingAddress")	
		public String payment(){
			
			return "BillingAddress";
		}
		@RequestMapping("/billingAddess")
		public String billingAddress(@ModelAttribute BillingAddress billingAddress){
			billingAddressService.saveOrUpdate(billingAddress);
			return "home";
	}
		@RequestMapping("/newshippingAddress")	
		public String payment1(){
			
			return "ShippingAddress";
		}
		@RequestMapping("/shippingAddess")
		public String shippingAddress(@ModelAttribute ShippingAddress shippingAddress){
			shippingAddressService.saveOrUpdate(shippingAddress);
			return "home";
	}
}


