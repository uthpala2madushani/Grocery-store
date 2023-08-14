package com.lakshithastores.lakshithastores.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "wear_house_store")
public class Wearhousestore {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	// manytoone mapping ka danna
	@Column(name = "item_code")
	private String itemCode;
	
	@Column(name = "item_name")
	private String itemName;
	
	@Column(name = "qty")
	private Integer qty;
	
	@Column(name = "date")
	private LocalDate date;
	
	@Column(name = "purchase_price")
	private Double purchasePrice;
	
	@Column(name = "selling_price")
	private Double sellingPrice;
	
	@Column(name = "creator")
	private String creator;

	public Wearhousestore() {
		super();
	}

	public Wearhousestore(int id, String itemCode, String itemName, Integer qty, LocalDate date, Double purchasePrice,
			Double sellingPrice, String creator) {
		super();
		this.id = id;
		this.itemCode = itemCode;
		this.itemName = itemName;
		this.qty = qty;
		this.date = date;
		this.purchasePrice = purchasePrice;
		this.sellingPrice = sellingPrice;
		this.creator = creator;
	}
	
	

	public Wearhousestore(String itemCode, String itemName, Integer qty, Double purchasePrice, Double sellingPrice) {
		super();
		this.itemCode = itemCode;
		this.itemName = itemName;
		this.qty = qty;
		this.purchasePrice = purchasePrice;
		this.sellingPrice = sellingPrice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Integer getQty() {
		return qty;
	}

	public void setQty(Integer qty) {
		this.qty = qty;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
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
		return "Wearhousestore [id=" + id + ", itemCode=" + itemCode + ", itemName=" + itemName + ", qty=" + qty
				+ ", date=" + date + ", purchasePrice=" + purchasePrice + ", sellingPrice=" + sellingPrice + ", creator="
				+ creator + "]";
	}

	
	
}
