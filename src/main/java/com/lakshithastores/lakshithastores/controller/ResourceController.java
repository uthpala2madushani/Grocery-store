package com.lakshithastores.lakshithastores.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lakshithastores.lakshithastores.entity.Item;
import com.lakshithastores.lakshithastores.service.EmployeeService;
import com.lakshithastores.lakshithastores.service.ItemService;
import com.lakshithastores.lakshithastores.service.UserService;
import com.lakshithastores.lakshithastores.service.WearhouseService;

@Controller
public class ResourceController {
	@Autowired
	ItemService itemService;
	
	@Autowired
	WearhouseService wearhouseService;
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	UserService userService;
	
	
	@RequestMapping("/login")
	public String login() {
		return "Login";
	}
	
	@RequestMapping("/")
	public String mainPage(HttpServletRequest request) {
		if(request.getSession().getAttribute("username") == null) {
			return "redirect:login";
		}
		return "CommonDashBoard";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(HttpServletRequest request) {
		if(request.getSession().getAttribute("username") == null) {
			return "redirect:login";
		}
		return "CommonDashBoard";
	}
	
	@RequestMapping("/items")
	public String itemForm(Model model,HttpServletRequest request) {
		if(request.getSession().getAttribute("username") == null) {
			return "redirect:login";
		}
		List<Item> items = itemService.findAll();
		model.addAttribute("itemList", items);
		return "ItemTable";
	}

	@RequestMapping("/store")
	public String wearHouseTable(Model model, HttpServletRequest request) {
		if(request.getSession().getAttribute("username") == null) {
			return "redirect:login";
		}
		return "WearhouseTable";
	}
	
	@RequestMapping("/employee")
	public String employee(Model model , HttpServletRequest request) {
		if(request.getSession().getAttribute("username") == null) {
			return "redirect:login";
		}
		return "EmployeeTabAndForm";
	}
	
	@RequestMapping("/userTable")
	public String userTable(HttpServletRequest request) {
		if(request.getSession().getAttribute("username") == null) {
			return "redirect:login";
		}
		return "UserTable";
	}
	
	@RequestMapping("/customer")
	public String customer(HttpServletRequest request) {
		if(request.getSession().getAttribute("username") == null) {
			return "redirect:login";
		}
		return "Customer";
	}
	
	@RequestMapping("/billing")
	public String billng(HttpServletRequest request) {
		if(request.getSession().getAttribute("username") == null) {
			return "redirect:login";
		}
		return "BillingForm";
	}
	
	@RequestMapping("/sales")
	public String sales(HttpServletRequest request) {
		if(request.getSession().getAttribute("username") == null) {
			return "redirect:login";
		}
		return "SalesTable";
	}
	
	

}
