package com.verizon.ves.ui;

import java.util.Arrays;

public class ProfilePull {
	
	String lineofbusiness;
	CustomerDetails customerdetails;
	OrderHistory[] orderhistory;
	ContractHistory[] contractdetails;
	
	
	
	public ProfilePull() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProfilePull(String lineofbusiness, CustomerDetails customerdetails,
			OrderHistory[] orderhistory, ContractHistory[] contracthistory) {
		super();
		this.lineofbusiness = "ves";
		this.customerdetails = customerdetails;
		this.orderhistory = orderhistory;
		this.contractdetails = contracthistory;
	}
	public String getLineofbusiness() {
		return lineofbusiness;
	}
	public void setLineofbusiness(String lineofbusiness) {
		this.lineofbusiness = lineofbusiness;
	}
	public CustomerDetails getCustomerdetails() {
		return customerdetails;
	}
	public void setCustomerdetails(CustomerDetails customerdetails) {
		this.customerdetails = customerdetails;
	}
	public OrderHistory[] getOrderHistory() {
		return orderhistory;
	}
	public void setOrderHistory(OrderHistory[] orderhistory) {
		this.orderhistory = orderhistory;
	}
	public ContractHistory[] getContractHistory() {
		return contractdetails;
	}
	public void setContractHistory(ContractHistory[] contracthistory) {
		this.contractdetails = contracthistory;
	}
	@Override
	public String toString() {
		return "ProfilePull [lineofbusiness=" + lineofbusiness
				+ ", customerdetails=" + customerdetails + ", orderhistory="
				+ Arrays.toString(orderhistory) + ", contracthistory="
				+ Arrays.toString(contractdetails) + "]";
	}
	
	
	
}
