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
		private String name;
		private String description;
		private String category;
		private String author;
		private String published;
		private String mfg;
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

		public String getMfg() {
			return mfg;
		}

		public void setMfg(String mfg) {
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

		public String getAuthor() {
			return author;
		}

		public void setAuthor(String author) {
			this.author = author;
		}

		public String getPublished() {
			return published;
		}

		public void setPublished(String published) {
			this.published = published;
		}

		
		
		
	
		
	}



