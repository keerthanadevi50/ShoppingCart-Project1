package com.shoppingCart.model;


	

	import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

	@Entity
	public class category {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
		
	private String categoryDetails;
	private String categoryName;


	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategoryDetails() {
		return categoryDetails;
	}
	public void setCategoryDetails(String categoryDetails) {
		this.categoryDetails = categoryDetails;
	}

	
	}
	

	


