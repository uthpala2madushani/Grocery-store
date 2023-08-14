package com.lakshithastores.lakshithastores.entity.nonentity;

public class StoreDetails {
	
	private String itemCode;
	
	private String name;
	
	private int c;

	public StoreDetails() {
		super();
	}

	public StoreDetails(String itemCode, String name, int c) {
		super();
		this.itemCode = itemCode;
		this.name = name;
		this.c = c;
	}

	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getC() {
		return c;
	}

	public void setC(int c) {
		this.c = c;
	}

	@Override
	public String toString() {
		return "StoreDetails [itemCode=" + itemCode + ", name=" + name + ", c=" + c + "]";
	}

	
	

}
