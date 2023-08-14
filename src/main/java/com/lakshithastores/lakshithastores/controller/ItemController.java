package com.lakshithastores.lakshithastores.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.lakshithastores.lakshithastores.entity.Item;
import com.lakshithastores.lakshithastores.entity.Wearhousestore;
import com.lakshithastores.lakshithastores.service.ItemService;
import com.lakshithastores.lakshithastores.service.WearhouseService;
@Controller
public class ItemController {
	@Autowired
	ItemService itemService;
	@Autowired
	WearhouseService wearhouseService;
	
	
	@RequestMapping("/ViewItemDetails")
	public String viewItemDetails(@RequestParam(name="id") Integer id, Model model) {
		Optional<Item> item = itemService.findById(id);
		model.addAttribute("item", item.get());
		return "ViewItemDetails";
		
	}
	
	@RequestMapping("/DeleteItem")
	public String deleteItem(@RequestParam(name="id") Integer id, Model model) {
		itemService.deleteById(id);
		String message =  "Successfuly deleted!";
		
		 model.addAttribute("msgs", message);
        model.addAttribute("color", "alert-success");
        model.addAttribute("fs", "noprint");
		return "message/Success";
	}
	
	@RequestMapping("/ItemForm")
	public String itemForm(Model model) {
		List<Wearhousestore> wearhousestores = wearhouseService.findAll();
		model.addAttribute("wearhouse", wearhousestores);
//	 Item item = new Item();
//	 model.addAttribute(item);
	 
		return "ItemForm";
	}
	
	@RequestMapping("/itemsave")
	@ResponseBody
	public String addItem(@RequestParam("name") String name, @RequestParam("date") String date,@RequestParam("minQty") Integer minQty,@RequestParam("purchasePrice") Double purchasePrice,
			@RequestParam("sellingPrice") Double sellingPrice,@RequestParam("description") String description,@RequestParam("category") String category, Principal principal) {
		
		String nameValue = "wwwww";
		try {
			Item item = new Item();
//			Auto generate itemcode
			int count = itemService.getCount();
			String co = Integer.toString(count);
			int length = co.length();
			String o = "0";
			item.setItemCode("IM" + o.repeat(5 - length) + (count+1));
			
//			 Initially status set as "true"
			item.setStatus(true);
			
			item.setName(name);
			
			LocalDate localDate = LocalDate.parse(date);
			
			item.setDate(localDate);
			item.setUpdateDate(localDate);
			
//			int i=Integer.parseInt(minQty);  
			item.setMinQty(minQty);
			
//			Double j=Double.parseDouble(purchasePrice);
			item.setPurchasePrice(purchasePrice);
			
//			Double l=Double.parseDouble(sellingPrice);
			item.setSellingPrice(sellingPrice);
			
			item.setDescription(description);
			
			item.setCategory(category);
			
			String loggedUser = principal.getName();
			item.setCreator(loggedUser);
			
			Item res = itemService.save(item);
//			System.out.println(res);
			
			nameValue = res.getName();
			
			return nameValue;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	@RequestMapping("/updateitem")
	@ResponseBody
	public String updateItem(@RequestBody String json) {
		System.out.println("awfedf++" + json);
		try {
			Gson gson = new Gson();
			JsonObject jo = gson.fromJson(json, JsonObject.class);
			JsonObject jsonObject = jo.getAsJsonObject();
			Item item = gson.fromJson(jsonObject, Item.class);
			System.out.println(item.getCategory());
			return item.getCategory();
			}catch (Exception e) {
				e.printStackTrace();
			}
		return null;
		
	}
	
	@RequestMapping("/newPurchaseItem")
	public String newPurchaseItem() {
		
		return "NewPurchaseItem";
	}
	
	@RequestMapping("/getItemData")
	@ResponseBody
	public List<Item> getItemData() {
		List<Item> items = itemService.findAll();
		System.out.println(items);
		return items;
	}
	
	
	
}
