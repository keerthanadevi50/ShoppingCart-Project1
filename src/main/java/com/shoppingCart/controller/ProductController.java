package com.shoppingCart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingCart.model.Supplier;
import com.shoppingCart.model.category;
import com.shoppingCart.model.product;
import com.shoppingCart.service.CategoryService;
import com.shoppingCart.service.ProductService;
import com.shoppingCart.service.SupplierService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SupplierService supplierService;
	
	
	public ProductController() {
		System.out.println("INSTANTIATING PRODUCTCONTROLLER");
	}
	@RequestMapping("/productform")
	public ModelAndView productpage() {
		
		ModelAndView mv = new ModelAndView("AdminLogin");
		List<category> categoryList = categoryService.getCategories();
		List<Supplier> supplierList = supplierService.list();
		mv.addObject("categoryList", categoryList);
		mv.addObject("supplierList", supplierList);
		mv.addObject("newProduct", true);
		return mv;
	}
	@RequestMapping("/viewproduct")
	public ModelAndView productview() {
		ModelAndView mv = new ModelAndView("AdminLogin");
		List<product> productList = productService.getAllProducts();
		mv.addObject("productList",productList);
				mv.addObject("viewProduct",true);

		return mv;
	}
	@RequestMapping("editproductform/{id}")
	public String editcategory(@PathVariable ("id") int id, Model model)
	{
		product pro = productService.getProductById(id);
		
		model.addAttribute("editProduct", true);
		model.addAttribute("product", pro);
		return "AdminLogin";
	
	}
	@RequestMapping("productdetails/{pid}")
	public String productdetails(@PathVariable ("pid") int pid, Model model)
	{
		product pro = productService.getProductById(pid);
		
		model.addAttribute("productDetails", true);
		model.addAttribute("product", pro);
		return "UserLogin";
	
	}
	@RequestMapping("editProduct")
	public String editProductPage(@ModelAttribute product pro )
	{
		productService.updateProduct(pro);
		return "redirect:/viewproduct";
		
		
	}
	
	
	@RequestMapping("deleteProduct/{pid}")
	public String deleteProduct(@PathVariable ("pid") int pid, Model model){
	productService.deleteProduct(pid);
	/*List<category> categoryList = categoryService.getCategories();
	model.addAttribute("categoryList", categoryList);
	model.addAttribute("viewCategory", true);*/
		return "redirect:/viewproduct";
	
}

	

	@RequestMapping("/addproduct")
	public String addproduct(@ModelAttribute product pro,@RequestParam("prdImage") MultipartFile file) {
		productService.saveProduct(pro);
		FileUtil.upload("H://it/src/main/webapp/WEB-INF/resources/productimages/", file, "ProductId"+pro.getPid());
		return "redirect:/viewproduct";
	}


}
