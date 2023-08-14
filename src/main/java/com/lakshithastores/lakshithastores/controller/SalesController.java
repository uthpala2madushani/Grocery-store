package com.lakshithastores.lakshithastores.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lakshithastores.lakshithastores.entity.CentralTable;
import com.lakshithastores.lakshithastores.repository.CentraRepository;

@Controller
public class SalesController {
	
	@Autowired
	CentraRepository centraRepository;
	
	@RequestMapping("/getSalesData")
	@ResponseBody
	public List<CentralTable> getSalesData() {
	List<CentralTable> centralTable = centraRepository.findAll();
	System.out.println(centralTable);
		return centralTable;
	}

}
