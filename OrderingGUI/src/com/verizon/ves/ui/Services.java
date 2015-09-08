package com.verizon.ves.ui;

public class Services {
	
	String servicecode;
	String servicename;
	Quantity quantity;
	
	
	
	public Services() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Services(String servicecode, String servicename, Quantity quantity) {
		super();
		this.servicecode = servicecode;
		this.servicename = servicename;
		this.quantity = quantity;
	}
	public String getServicecode() {
		return servicecode;
	}
	public void setServicecode(String servicecode) {
		this.servicecode = servicecode;
	}
	public String getServicename() {
		return servicename;
	}
	public void setServicename(String servicename) {
		this.servicename = servicename;
	}
	public Quantity getQuantity() {
		return quantity;
	}
	public void setQuantity(Quantity quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "\nService Code:" + servicecode + "\nService Name:"
				+ servicename + "\nQuantity:" + quantity +"\n";
	}
	
	
	
	

}
