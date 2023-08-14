package com.lakshithastores.lakshithastores.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lakshithastores.lakshithastores.entity.Customer;
import com.lakshithastores.lakshithastores.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	CustomerService customerService;

	@RequestMapping("/saveCustomer")
	@ResponseBody
	public Customer saveCustomer(@RequestParam("name") String name, @RequestParam("mobile") String mobile,
			@RequestParam("address") String address, @RequestParam("nic") String nic) {
		Customer cu = new Customer();
		cu.setAddress(address);
		cu.setMobile(mobile);
		cu.setName(name);
		cu.setNic(nic);
		
		Customer res = customerService.save(cu);
		System.out.println(res);
		return res;
	}
	
	@PostMapping("/getCustomerData")
	@ResponseBody
	public List<Customer> getCustomerData(){
		List<Customer> cusList = customerService.getAll();
//		System.out.println(cusList);
		return cusList;
	}
	
}
