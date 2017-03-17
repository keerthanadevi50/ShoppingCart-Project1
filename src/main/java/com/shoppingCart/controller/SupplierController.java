package com.shoppingCart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingCart.model.Supplier;
import com.shoppingCart.model.product;
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
		return "redirect:/viewsupplier";
	}
	@RequestMapping("/supplierform")
	public ModelAndView supplierform(){
		ModelAndView mv = new ModelAndView("AdminLogin");
		mv.addObject("newSupplier", true);
		return mv;
	}
	
	@RequestMapping("editsupplierform/{id}")
	public String editsupplier(@PathVariable ("id") String id, Model model)
	{
		
		Supplier supplier = supplierService.get(id);
		
		model.addAttribute("editSupplier", true);
		model.addAttribute("Supplier", supplier);
		return "AdminLogin";
	
	}
	@RequestMapping("editSupplier")
	public String editSupplierPage(@ModelAttribute("Supplier") Supplier supplier )
	{
		System.out.println(supplier.getId());
		supplierService.saveOrUpdate(supplier);
		return "redirect:/viewsupplier";
		
		
	}
	@RequestMapping("/viewsupplier")
	public ModelAndView viewSupplier(){
		ModelAndView mv = new ModelAndView("AdminLogin");
		List<Supplier> supplierList = supplierService.list();
		mv.addObject("viewSupplier", true);
		mv.addObject("supplierList", supplierList);
		return mv;
	}
	@RequestMapping("deleteSupplier/{id}")
	public String deleteSupplier(@PathVariable ("id") String id, Model model){
	supplierService.delete(id);
	/*List<category> categoryList = categoryService.getCategories();
	model.addAttribute("categoryList", categoryList);
	model.addAttribute("viewCategory", true);*/
		return "redirect:/viewsupplier";
	
}

	
/*@RequestMapping("
	public String getnewSupplier(@RequestParam("id") String id ){
	supplierService.delete(id);
	return "supplierform";
}
*/
}
