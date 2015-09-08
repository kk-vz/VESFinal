package com.verizon.ves.ui;
public class Address {
	
	public String streetname;
	public long zipcode;
	public String city;
	public String state;
	public int stateid;
	public String country;
	
	
	
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Address(String streetname, long zipcode, String city,
			String state, int bstateid, String country) {
		super();
		this.streetname = streetname;
		this.zipcode = zipcode;
		this.city = city;
		this.state = state;
		this.stateid=bstateid;
		this.country = country;
	}

	public String getStreetname() {
		return streetname;
	}

	public void setStreetname(String streetname) {
		this.streetname = streetname;
	}

	public long getZipcode() {
		return zipcode;
	}

	public void setZipcode(long zipcode) {
		this.zipcode = zipcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getStateid() {
		return stateid;
	}

	public void setStateid(int stateid) {
		this.stateid = stateid;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return  streetname + ", " + city + ", " + state + ", " + ", " + zipcode	+", " + country;
	}
	
	
}
