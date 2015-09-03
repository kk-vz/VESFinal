package com.verizon.ves.ui;

public class CustomerDetails {
	
	private String customertype;
	private int customerid;	
	private String fname;
	private String lname;		
	private Address connectionaddress;
	private Address billingaddress;	
	private String email;
	private long contactnumber;
	private String dateofbirth;
	
	public CustomerDetails()  {
		this.customertype = "";
		this.customerid = 0;
		this.fname = "";
		this.lname = null;
		this.connectionaddress = new Address("", 0, "", "select", 0, "");
		this.billingaddress = new Address("", 0, "", "select", 0, "");
		this.email = "";
		this.contactnumber = 0;
		this.dateofbirth = null;
		
	}
	
	public CustomerDetails(String customertype, int customerid,
			String fname, String lname,	Address connectionaddress,
			Address billingaddress, String email,
			long contactnumber, String dateofbirth) {
		super();
		this.customertype = customertype;
		this.customerid = customerid;
		this.fname = fname;
		this.lname = null;
		this.connectionaddress = connectionaddress;
		this.billingaddress = billingaddress;
		this.email = email;
		this.contactnumber = contactnumber;
		this.dateofbirth = null;
	}

	public String getCustomertype() {
		return customertype;
	}

	public void setCustomertype(String customertype) {
		this.customertype = customertype;
	}

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

		public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public Address getConnectionaddress() {
		return connectionaddress;
	}

	public void setConnectionaddress(Address connectionaddress) {
		this.connectionaddress = connectionaddress;
	}

	public Address getBillingaddress() {
		return billingaddress;
	}

	public void setBillingaddress(Address billingaddress) {
		this.billingaddress = billingaddress;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getContactnumber() {
		return contactnumber;
	}

	public void setContactnumber(long contactnumber) {
		this.contactnumber = contactnumber;
	}

	public String getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	@Override
	public String toString() {
		return "CustomerDetails [customertype=" + customertype
				+ ", customerid=" + customerid + ", fname=" + fname + ", lname=" + lname
				+ ", connectionaddress=" + connectionaddress
				+ ", billingaddress=" + billingaddress + ", email=" + email
				+ ", contactnumber=" + contactnumber + ", dateofbirth="
				+ dateofbirth + "]";
	}
	
	
}
