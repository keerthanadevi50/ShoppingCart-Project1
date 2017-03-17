package com.shoppingCart.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.dao.CategoryDao;
import com.shoppingCart.model.category;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;

	public List<category> getCategories() {
		return categoryDao.getCategories();
	}

	@Override
	public category getCatById(int catId) {
		
		// TODO Auto-generated method stub
		return categoryDao.getCatById(catId);
	}

	@Transactional
	public void update(category cat) {
		categoryDao.update(cat);
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void delete(int id) {
		categoryDao.delete(id);
		// TODO Auto-generated method stub
		
	}

}
