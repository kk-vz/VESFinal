package com.verizon.ves.ui;

public class Products {
	
	String productcode;
	String productname;
	
	
	
	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Products(String productcode, String productname) {
		super();
		this.productcode = null;
		this.productname = null;
	}
	public String getProductcode() {
		return productcode;
	}
	public void setProductcode(String productcode) {
		this.productcode = productcode;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	@Override
	public String toString() {
		return "Products [productcode=" + productcode + ", productname="
				+ productname + "]";
	}
	
	

}
