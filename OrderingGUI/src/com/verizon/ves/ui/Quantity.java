package com.verizon.ves.ui;

public class Quantity {
	
	int max;
	int current;
		
	
	
	public Quantity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Quantity(int max, int current) {
		super();
		this.max = max;
		this.current = current;
		
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	public int getCurrent() {
		return current;
	}
	public void setCurrent(int current) {
		this.current = current;
	}
	@Override
	public String toString() {
		return "Quantity [max=" + max + ", current=" + current + "]";
	}
	
	

	
}
 