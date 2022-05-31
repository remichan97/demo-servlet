package com.aptech.demo.lab9.entity;

public class Product {
	private int id;
	private String pname;
	private String pdesc;
	private float price;
	private String image;
	
	public Product() {
	}

	public Product(int id, String pname, String pdesc, float price, String image) {
		this.id = id;
		this.pname = pname;
		this.pdesc = pdesc;
		this.price = price;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdesc() {
		return pdesc;
	}

	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", image=" + image + ", pdesc=" + pdesc + ", pname=" + pname + ", price=" + price
				+ "]";
	}

}
