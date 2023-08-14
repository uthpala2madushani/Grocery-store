package com.lakshithastores.lakshithastores.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lakshithastores.lakshithastores.entity.Item;
import com.lakshithastores.lakshithastores.entity.Sales;
import com.lakshithastores.lakshithastores.entity.nonentity.TotalBill;
import com.lakshithastores.lakshithastores.repository.ItemRepository;
import com.lakshithastores.lakshithastores.repository.SalesRepository;
import com.lakshithastores.lakshithastores.service.ItemService;

@Controller
public class BillController {
	
	@Autowired
	ItemService itemService;
	
	@Autowired
	SalesRepository salesRepository;
	
	@Autowired
	ItemRepository itemRepository;
	
	@RequestMapping("/newInvoiceCategory")
	@ResponseBody
	public List<Item> newInvoiceCategory() {
		List<Item> items = itemService.findAll();
		System.out.println(items);
		return items;
	}
	
	@RequestMapping("/itemName")
	@ResponseBody
	public List<Item> purchItemName(@RequestParam("category") String category) {
		System.out.println(category);
		 List<Item> items = itemService.findByCategory(category);
		 System.out.println(items);
		 return items;
	}
	
	@RequestMapping("/itemPrice")
	@ResponseBody
	public Item getItemPrice(@RequestParam("name") String name) {
		System.out.println(name);
		Item price = itemService.findByItemName(name);
		System.out.println(price);
//		 String res = Double.toString(price);
		return price;
	}
	
	@PostMapping("/getTotal")
	@ResponseBody
	public String getTotal(@RequestParam("price") String price, @RequestParam("qty") String qty) {
		System.out.println(price + qty);
		Integer val1 = Integer.parseInt(price);
		Integer val2 = Integer.parseInt(qty);
//		Integer val3 = Integer.parseInt(tot);
		System.out.println(val1 * val2);
		String res1 = String.valueOf(val1 * val2);
//		String res2 = String.valueOf(val3 +  (val1 * val2));
//		TotalBill totalBill = new TotalBill(res1,res2);
		return res1;
	}
	
	@RequestMapping("/savetem")
	@ResponseBody
	public String savetem(@RequestParam("sellprice") String sellprice, @RequestParam("qty") String qty, @RequestParam("itemId") String itemId,
	@RequestParam("category") String category,@RequestParam("name") String name,HttpServletRequest request) {
//		Principal principal = request.getUserPrincipal();
//		String logedUser =  principal.getName();
//		System.out.println(logedUser);
		LocalDate date =  LocalDate.now();
		Sales sales = new Sales();
	
		
		sales.setDate(date);
		
		Double price = Double.parseDouble(sellprice);  
		sales.setSellingPrice(price);
		
		sales.setItemCode(itemId);
		
		sales.setItemName(name);
		
		sales.setQty(qty);
		
		Double pprice = itemRepository.findByItemId(itemId);
		
		sales.setPurchasePrice(pprice);
		
		itemRepository.save(sales);
		
		
		
		
		
		return "Success";
		
		
		
		
		
	}
	
}
