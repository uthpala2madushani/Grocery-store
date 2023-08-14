package com.lakshithastores.lakshithastores.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee")
public class Employee {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "emp_no")
	private String empNo;
	
	@Column(name = "emp_ameo")
	private String empName;
	
	@Column(name = "desgnation")
	private String desgnation;
	
	@Column(name = "age")
	private Integer age;
	
	@Column(name = "mobile")
	private String mobile;
	
	@Column(name = "nic")
	private String nic;

	@Column(name = "address")
	private String address;
	
	@Column(name = "date")
	private LocalDate date;

	public Employee() {
		super();
	}


	public Employee(int id, String empNo, String empName, String desgnation, Integer age, String mobile, String nic,
			String address, LocalDate date) {
		super();
		this.id = id;
		this.empNo = empNo;
		this.empName = empName;
		this.desgnation = desgnation;
		this.age = age;
		this.mobile = mobile;
		this.nic = nic;
		this.address = address;
		this.date = date;
	}

	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmpNo() {
		return empNo;
	}


	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}


	public String getEmpName() {
		return empName;
	}


	public void setEmpName(String empName) {
		this.empName = empName;
	}


	public String getDesgnation() {
		return desgnation;
	}


	public void setDesgnation(String desgnation) {
		this.desgnation = desgnation;
	}


	public Integer getAge() {
		return age;
	}


	public void setAge(Integer age) {
		this.age = age;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getNic() {
		return nic;
	}


	public void setNic(String nic) {
		this.nic = nic;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public LocalDate getDate() {
		return date;
	}


	public void setDate(LocalDate date) {
		this.date = date;
	}


	@Override
	public String toString() {
		return "Employee [id=" + id + ", empNo=" + empNo + ", empName=" + empName + ", desgnation=" + desgnation
				+ ", age=" + age + ", mobile=" + mobile + ", nic=" + nic + ", address=" + address + ", date=" + date
				+ "]";
	}


	


	
	
	

}
