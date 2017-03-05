package com.shoppingCart.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
	@Entity
	@Table(name="product")
	//Table Name : product
	//primary key : id
	//name = varchar(255), description =varchar, price =number, quantitiy =number, mfg =int
	public class product {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		@Column(name="pid")
		private int pid;
		
		
		
		private String category;
		
		
		private String description;
		
		
		
		
		private int mfg;
		private String name;
		private int price;
		
		private int quantity;

		public int getPid() {
			return pid;
		}

		public void setPid(int pid) {
			this.pid = pid;
		}

		public String getCategory() {
			return category;
		}

		public void setCategory(String category) {
			this.category = category;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public int getMfg() {
			return mfg;
		}

		public void setMfg(int mfg) {
			this.mfg = mfg;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public int getPrice() {
			return price;
		}

		public void setPrice(int price) {
			this.price = price;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		
		
	
		
	}



