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
	public void saveProduct(product pro) {
		 productDAO.saveProduct(pro);
	}

	@Transactional
	public List<product> getAllProducts() {
		// TODO Auto-generated method stub
		return productDAO.getAllProducts();
	}

	@Transactional
	public product getProductById(int id) {
		// TODO Auto-generated method stub
		return productDAO.getProductById(id);
	}

	@Transactional
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		productDAO.deleteProduct(id);

	}

	@Transactional
	public void updateProduct(product pro) {
		// TODO Auto-generated method stub
productDAO.updateProduct(pro);
	}

	
}
