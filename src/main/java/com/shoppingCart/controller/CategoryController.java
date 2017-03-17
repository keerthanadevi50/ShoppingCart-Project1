package com.shoppingCart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingCart.model.category;
import com.shoppingCart.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	
	
	public CategoryController() {
		System.out.println("INSTANTIATING CATEGORYCONTROLLER");
	}
	
	@RequestMapping("/categoryform")
	public ModelAndView categoryform()
	{
		ModelAndView mv = new ModelAndView("AdminLogin");
		mv.addObject("newCategory", true);
		return mv;
	}
	
	@RequestMapping("editCategory/{id}")
	public String editcategory(@PathVariable ("id") int id, Model model)
	{
		category category = categoryService.getCatById(id);
		model.addAttribute("editCategory", true);
		model.addAttribute("category", category);
		return "AdminLogin";
	}
	@RequestMapping("editCategory")
	public String editCategoryPage(@ModelAttribute category cat )
	{
		categoryService.update(cat);
		return "redirect:/viewcategory";
		
		
	}
	@RequestMapping("/viewcategory")
	public ModelAndView viewcategory()
	{
		ModelAndView mv = new ModelAndView("AdminLogin");
	List<category> categoryList = categoryService.getCategories();
	mv.addObject("categoryList", categoryList);
		mv.addObject("viewCategory", true);
		return mv;
	}
	@RequestMapping("/newCategory")
	public String newCategory(@ModelAttribute category cat){
		categoryService.update(cat);
		return "redirect:/viewcategory";
	}
	@RequestMapping("deleteCategory/{id}")
		public String deleteCategory(@PathVariable ("id") int id, Model model){
		categoryService.delete(id);
		/*List<category> categoryList = categoryService.getCategories();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("viewCategory", true);*/
			return "redirect:/viewcategory";
		
	}
	
}
