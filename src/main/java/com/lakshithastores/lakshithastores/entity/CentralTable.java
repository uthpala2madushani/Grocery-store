package com.lakshithastores.lakshithastores.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "central_store")
public class CentralTable {
		@Id
		@Column(name = "item_code")
		private String itemCode;
		
		@Column(name = "item_name")
		private String itemName;
		
		@Column(name = "qty")
		private Integer qty;
		
		@Column(name = "purchase_price")
		private Double purchasePrice;
		
		@Column(name = "selling_price")
		private Double sellingPrice;

		public CentralTable() {
			super();
		}

		public CentralTable(String itemCode, String itemName, Integer qty, Double purchasePrice, Double sellingPrice) {
			super();
			this.itemCode = itemCode;
			this.itemName = itemName;
			this.qty = qty;
			this.purchasePrice = purchasePrice;
			this.sellingPrice = sellingPrice;
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

		@Override
		public String toString() {
			return "CentralTable [itemCode=" + itemCode + ", itemName=" + itemName + ", qty=" + qty + ", purchasePrice="
					+ purchasePrice + ", sellingPrice=" + sellingPrice + "]";
		}
		
		
	
}
