package com.lakshithastores.lakshithastores.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lakshithastores.lakshithastores.entity.Employee;
import com.lakshithastores.lakshithastores.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired 
	EmployeeService employeeService;

	@RequestMapping("/saveNewEmployee")
	@ResponseBody
	public Employee addItem(@RequestParam("name") String name, @RequestParam("empno") String empno,
			@RequestParam("designation") String designation, @RequestParam("age") Integer age,@RequestParam("date") String date,
			@RequestParam("mobile") String mobile, @RequestParam("address") String address,@RequestParam("nic") String nic) {
				System.out.println("name : " + name);
		try {
			
			Employee employee = new Employee();
			
			employee.setEmpName(name);
			employee.setAddress(address);
			employee.setAge(age);
			employee.setDesgnation(designation);
			employee.setMobile(mobile);
			employee.setNic(nic);
			employee.setEmpNo(empno);
			
			LocalDate localDate = LocalDate.parse(date);
			employee.setDate(localDate);
			
			Employee emp = employeeService.save(employee);
			System.out.println(emp);
			
			return emp;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		
		return null;
	}
	
	
	@RequestMapping("/getEmployeeData")
	public @ResponseBody List<Employee> getEmployees(){
		List<Employee> empList = employeeService.findAll();
		System.out.println(empList);
		return empList;
	}
	
	@RequestMapping("/viewEmployeeData")
	public String viewEmployeeData(@RequestParam("empno") String empNo, Model model ) {
		Employee employee = employeeService.findByEmpNo(empNo);
		System.out.println(employee);
		model.addAttribute("employee", employee);
		return "EmployeeVeiw";
	}
	
	
}

