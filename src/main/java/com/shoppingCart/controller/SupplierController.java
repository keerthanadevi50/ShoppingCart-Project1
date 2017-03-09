package com.shoppingCart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.shoppingCart.model.Supplier;
import com.shoppingCart.service.SupplierService;

@Controller
public class SupplierController {
	@Autowired
	private SupplierService supplierService;
	
	public SupplierController() {
		System.out.println("INSTANTIATING SUPPLIERCONTROLLER");
	}
	@RequestMapping("/newSupplier")
	public String newSupplier(@ModelAttribute Supplier supplier ) {
		supplierService.saveOrUpdate(supplier);
		return "supplierform";
	}
	@RequestMapping("/supplierform")
	public String supplierform(){
		return "supplierform";
	}
	
/*@RequestMapping("
	public String getnewSupplier(@RequestParam("id") String id ){
	supplierService.delete(id);
	return "supplierform";
}
*/
}
