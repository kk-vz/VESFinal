package com.verizon.ves.ui;

import java.util.Arrays;

public class OrderHistory {
	
	String orderid;
	String dateofbooking;
	String dateoforder;
	String duedate;
	String orderstatus;
	Services[] services;
	Products[] products;
	
	
	
	public OrderHistory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderHistory(String orderid, String dateofbooking, String dateoforder, String duedate, String orderstatus,
			Services[] services, Products[] products) {
		super();
		this.orderid = orderid;
		this.dateofbooking = dateofbooking;//sysdate
		this.dateoforder = dateoforder;
		this.duedate = duedate;
		this.orderstatus = orderstatus;
		this.services = services;
		this.products = products;
	}

	
	public String getDateofbooking() {
		return dateofbooking;
	}

	public void setDateofbooking(String dateofbooking) {
		this.dateofbooking = dateofbooking;
	}

	public Products[] getProducts() {
		return products;
	}

	public void setProducts(Products[] products) {
		this.products = products;
	}

	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getDateoforder() {
		return dateoforder;
	}
	public void setDateoforder(String dateoforder) {
		this.dateoforder = dateoforder;
	}
	public String getDuedate() {
		return duedate;
	}
	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}
	public String getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
	public Services[] getServices() {
		return services;
	}
	public void setServices(Services[] services) {
		this.services = services;
	}
	@Override
	public String toString() {
		return "OrderHistory [orderid=" + orderid + ", dateoforder="
				+ dateoforder + ", duedate=" + duedate + ", orderstatus="
				+ orderstatus + ", services=" + Arrays.toString(services) + "]";
	}
	
	
}
