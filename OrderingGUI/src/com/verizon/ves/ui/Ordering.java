package com.verizon.ves.ui;

import java.util.Arrays;

public class Ordering {
	
	String lineofbusiness;
	CustomerDetails customerdetails;
	OrderDetails orderdetails;
	ContractDetails[] contractdetails;
	
	
	
	public Ordering() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ordering(String lineofbusiness, CustomerDetails customerdetails,
			OrderDetails orderdetails, ContractDetails[] contractdetails) {
		super();
		this.lineofbusiness = lineofbusiness;
		this.customerdetails = customerdetails;
		this.orderdetails = orderdetails;
		this.contractdetails = contractdetails;
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
	public OrderDetails getOrderdetails() {
		return orderdetails;
	}
	public void setOrderdetails(OrderDetails orderdetails) {
		this.orderdetails = orderdetails;
	}
	public ContractDetails[] getContractdetails() {
		return contractdetails;
	}
	public void setContractdetails(ContractDetails[] contractdetails) {
		this.contractdetails = contractdetails;
	}
	@Override
	public String toString() {
		return "Ordering [lineofbusiness=" + lineofbusiness
				+ ", customerdetails=" + customerdetails + ", orderdetails="
				+ orderdetails + ", contractdetails="
				+ Arrays.toString(contractdetails) + "]";
	}
	
	

}
