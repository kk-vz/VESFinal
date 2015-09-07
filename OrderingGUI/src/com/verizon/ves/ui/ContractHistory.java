package com.verizon.ves.ui;

public class ContractHistory {
	int contractid;
	String modeltype;
	String classofservice;
	String fromdate;
	String todate;
	int current;
	int max;
	int discountpercentage;
	public ContractHistory() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ContractHistory(int contractid, String modeltype, String classofservice, String fromdate, String todate,
			int current, int max, int discountpercentage) {
		super();
		this.contractid = contractid;
		this.modeltype = modeltype;
		this.classofservice = classofservice;
		this.fromdate = fromdate;
		this.todate = todate;
		this.current = current;
		this.max = max;
		this.discountpercentage = discountpercentage;
	}
	
	public int getContractid() {
		return contractid;
	}
	public void setContractid(int contractid) {
		this.contractid = contractid;
	}
	public String getModeltype() {
		return modeltype;
	}
	public void setModeltype(String modeltype) {
		this.modeltype = modeltype;
	}
	public String getClassofservice() {
		return classofservice;
	}
	public void setClassofservice(String classofservice) {
		this.classofservice = classofservice;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public int getCurrent() {
		return current;
	}
	public void setCurrent(int current) {
		this.current = current;
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	public int getDiscountpercentage() {
		return discountpercentage;
	}
	public void setDiscountpercentage(int discountpercentage) {
		this.discountpercentage = discountpercentage;
	}
	@Override
	public String toString() {
		return "ContractHistory [contractid=" + contractid + ", modeltype=" + modeltype + ", classofservice="
				+ classofservice + ", fromdate=" + fromdate + ", todate=" + todate + ", current=" + current + ", max="
				+ max + ", discountpercentage=" + discountpercentage + "]";
	}
	
	
	

}
