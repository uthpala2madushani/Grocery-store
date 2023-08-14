package com.lakshithastores.lakshithastores.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "salse")
public class Sales {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "date")
	private LocalDate date;
	
	@Column(name = "item_code")
	private String itemCode;
	
	@Column(name = "item_name")
	private String itemName;
	
	@Column(name = "qty")
	private String qty;
	
	@Column(name = "purchase_price")
	private Double purchasePrice;
	
	@Column(name = "selling_price")
	private Double sellingPrice;
	
	@Column(name = "creator")
	private String creator;

	public Sales() {
		super();
	}

	public Sales(int id, LocalDate date, String itemCode, String itemName, String qty, Double purchasePrice,
			Double sellingPrice, String creator) {
		super();
		this.id = id;
		this.date = date;
		this.itemCode = itemCode;
		this.itemName = itemName;
		this.qty = qty;
		this.purchasePrice = purchasePrice;
		this.sellingPrice = sellingPrice;
		this.creator = creator;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public Double getPurchasePrice() {
		return purchasePrice;
	}

	public void setPurchasePrice(Double purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public Double getSellingPrice() {
		return sellingPrice;
	}

	public void setSellingPrice(Double sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	@Override
	public String toString() {
		return "Sales [id=" + id + ", date=" + date + ", itemCode=" + itemCode + ", itemName=" + itemName + ", qty="
				+ qty + ", purchasePrice=" + purchasePrice + ", sellingPrice=" + sellingPrice + ", creator=" + creator
				+ "]";
	}
	
	
	
	
	
	
	
	
	

}
