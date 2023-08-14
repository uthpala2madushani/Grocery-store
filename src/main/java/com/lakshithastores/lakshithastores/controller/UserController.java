package com.lakshithastores.lakshithastores.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lakshithastores.lakshithastores.entity.Employee;
import com.lakshithastores.lakshithastores.entity.User;
import com.lakshithastores.lakshithastores.entity.nonentity.userdata;
import com.lakshithastores.lakshithastores.repository.UserRepository;
import com.lakshithastores.lakshithastores.service.EmployeeService;
import com.lakshithastores.lakshithastores.service.UserService;

@Controller
public class UserController {
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	UserRepository userRepository;
	
	
	@RequestMapping("/userForm")
	public String userForm(Model model){
	List<Employee> employeeLst =  employeeService.findAll();
//	System.out.println(employeeLst);
	model.addAttribute("employeeList", employeeLst);
	return "UserForm";
	}
	
	@RequestMapping("/userId")
	@ResponseBody
	public Employee userId(@RequestParam("empName") String empName) {
//		System.out.println(empName);
		Employee employee = employeeService.findByName(empName);
		System.out.println(employee);
		return employee;
		
	}
	
	@RequestMapping("/usersave")
	@ResponseBody
	public  userdata usersave(@RequestParam("empName") String empName, @RequestParam("userId") String userId, @RequestParam("designation") String designation,
			@RequestParam("pword") String pword ) {
		
		int userCount = userService.getExistUserByUserId(userId);
		System.out.println(userCount);
		userdata userData = new userdata();
		if(userCount > 0) {
			String text = "Username already in the system";
			userData.setRes(text);
			return userData;
		}else {
			String encryptedpassword = new BCryptPasswordEncoder().encode(pword);
			
			
			LocalDate date = java.time.LocalDate.now();
			System.out.println(date);
			User user = new User();
			user.setName(empName);
			user.setUserId(userId);
			user.setDesignation(designation);
			user.setPassword(encryptedpassword);
			user.setDate(date);
			
			User res = userService.save(user);
			userData.setUser(res);
			return userData;
		}
		
		
	}
	
	@RequestMapping("/getUserData")
	@ResponseBody
	public List<User> getUserData(){
		List<User> userList = userService.finAll();
		System.out.println(userList);
		return userList;
		
	}
	
	

}
