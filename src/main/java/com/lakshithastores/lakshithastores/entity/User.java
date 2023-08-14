package com.lakshithastores.lakshithastores.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "userId")
	private String userId;
	
	@Column(name = "designation")
	private String designation;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "date")
	private LocalDate date;

	public User() {
		super();
	}

	public User(int id, String name, String userId, String designation, String password, LocalDate date) {
		super();
		this.id = id;
		this.name = name;
		this.userId = userId;
		this.designation = designation;
		this.password = password;
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", userId=" + userId + ", designation=" + designation
				+ ", password=" + password + ", date=" + date + "]";
	}

	
	
	
	
}
