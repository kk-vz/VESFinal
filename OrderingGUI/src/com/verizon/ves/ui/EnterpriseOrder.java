package com.verizon.ves.ui;

public class EnterpriseOrder {
	String customerid;
	String contractid;
	String orderid;
	String email;
	
	
	
	public EnterpriseOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EnterpriseOrder(String customerid, String contractid,
			String orderid, String email) {
		super();
		this.customerid = customerid;
		this.contractid = contractid;
		this.orderid = orderid;
		this.email = email;
	}
	public String getCustomerid() {
		return customerid;
	}
	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}
	public String getContractid() {
		return contractid;
	}
	public void setContractid(String contractid) {
		this.contractid = contractid;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "EnterpriseOrder [customerid=" + customerid + ", contractid="
				+ contractid + ", orderid=" + orderid + ", email=" + email
				+ "]";
	}
	
	
	

}
