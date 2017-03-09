package com.shoppingCart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingCart.dao.SupplierDao;
import com.shoppingCart.model.Supplier;

@Service
public class SupplierServiceImpl implements SupplierService {
	@Autowired
	private SupplierDao  supplierDao;

	@Transactional
	public List<Supplier> list() {
		// TODO Auto-generated method stub
		return supplierDao.list();
	}

	@Transactional
	public Supplier get(String id) {
		// TODO Auto-generated method stub
		return supplierDao.get(id);
	}

	@Transactional
	public void saveOrUpdate(Supplier supplier) {
		supplierDao.saveOrUpdate(supplier);
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public void delete(String id) {
		 supplierDao.delete(id);
		// TODO Auto-generated method stub
		
	}

}
