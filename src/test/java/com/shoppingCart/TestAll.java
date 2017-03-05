package com.shoppingCart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shoppingCart.dao.CategoryDao;
import com.shoppingCart.dao.ProductDao;
import com.shoppingCart.model.category;
import com.shoppingCart.model.product;
import com.shoppingCart.service.CategoryService;

public class TestAll {
	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.shoppingCart");
		context.refresh();
		
		CategoryDao categoryDao = (CategoryDao) context.getBean("CategoryDao");
		ProductDao productDao = (ProductDao) context.getBean("ProductDao");
	    CategoryService categoryService =(CategoryService) context.getBean("CategoryService");
		category cat = (category) context.getBean("cat");
		product pro = (product) context.getBean("pro");


		cat.setId(23);
		cat.setCategoryDetails("asdad");
		categoryService.update(cat);
		
}
}
