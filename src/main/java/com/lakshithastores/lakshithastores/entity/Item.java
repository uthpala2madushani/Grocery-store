package com.lakshithastores.lakshithastores.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "item")
public class Item {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "item_code")
	private String itemCode;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "date")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate date;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "min_qty")
	private int minQty;
	
	@Column(name = "purchase_price")
	private Double purchasePrice;
	
	@Column(name = "selling_price")
	private Double sellingPrice;
	
	@Column(name = "status")
	private Boolean status;
	
	@Column(name = "update_date")
	private LocalDate updateDate;
	
	@Column(name = "category")
	private String category;
	
	@Column(name = "creator")
	private String creator;

	public Item() {
		super();
	}

	public Item(int id, String itemCode, String name, LocalDate date, String description, int minQty,
			Double purchasePrice, Double sellingPrice, Boolean status, LocalDate updateDate, String category,
			String creator) {
		super();
		this.id = id;
		this.itemCode = itemCode;
		this.name = name;
		this.date = date;
		this.description = description;
		this.minQty = minQty;
		this.purchasePrice = purchasePrice;
		this.sellingPrice = sellingPrice;
		this.status = status;
		this.updateDate = updateDate;
		this.category = category;
		this.creator = creator;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getMinQty() {
		return minQty;
	}

	public void setMinQty(int minQty) {
		this.minQty = minQty;
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

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public LocalDate getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(LocalDate updateDate) {
		this.updateDate = updateDate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	@Override
	public String toString() {
		return "Item [id=" + id + ", itemCode=" + itemCode + ", name=" + name + ", date=" + date + ", description="
				+ description + ", minQty=" + minQty + ", purchasePrice=" + purchasePrice + ", sellingPrice="
				+ sellingPrice + ", status=" + status + ", updateDate=" + updateDate + ", category=" + category
				+ ", creator=" + creator + "]";
	}

		

}
