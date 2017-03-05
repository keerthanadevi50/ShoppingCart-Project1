package com.shoppingCart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.dao.ProductDao;
import com.shoppingCart.model.product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDAO;

	public ProductServiceImpl() {
		System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");

	}

	@Transactional
	public product saveProduct(product pro) {
		return productDAO.saveProduct(pro);
	}

	@Transactional
	public List<product> getAllProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public product getProductById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void updateProduct(product pro) {
		// TODO Auto-generated method stub

	}

	@Override
	public product getProductById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
