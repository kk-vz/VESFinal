package com.verizon.ves.ui;

import java.util.Arrays;

public class OrderDetails {
	
	String orderid;
	String dateofbooking;
	String duedate;
	Services[] services;
	
	
	
	public OrderDetails() {
		super();
		// TODO Auto-generated constructor stub
	}


	public OrderDetails(String orderid,String dateofbooking, String duedate,
			Services[] services) {
		super();
		this.orderid = orderid;
		this.dateofbooking = dateofbooking;
		this.duedate = duedate;
		this.services = services;
	}
	
	
	public String getOrderid() {
		return orderid;
	}


	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}


	public String getDateofbooking() {
		return dateofbooking;
	}
	public void setDateofbooking(String dateofbooking) {
		this.dateofbooking = dateofbooking;
	}
	public String getDuedate() {
		return duedate;
	}
	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}
	public Services[] getServices() {
		return services;
	}
	public void setServices(Services[] services) {
		this.services = services;
	}


	@Override
	public String toString() {
		return "OrderDetails [orderid=" + orderid + ", dateofbooking="
				+ dateofbooking + ", duedate=" + duedate + ", services="
				+ Arrays.toString(services) + "]";
	}


 
	
	
}
