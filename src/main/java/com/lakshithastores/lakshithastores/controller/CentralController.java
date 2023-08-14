package com.lakshithastores.lakshithastores.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lakshithastores.lakshithastores.entity.CentralTable;
import com.lakshithastores.lakshithastores.service.CentralService;

@Controller
public class CentralController {
	@Autowired
	CentralService centralService;

	@RequestMapping("/getStoreData")
	@ResponseBody
	public List<CentralTable> getStoreData(){
		List<CentralTable> ce = centralService.findAll();
		System.out.println(ce);
		return ce;
	}
}
