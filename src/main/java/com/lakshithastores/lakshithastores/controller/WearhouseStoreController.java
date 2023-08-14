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
import com.lakshithastores.lakshithastores.repository.ItemRepository;
import com.lakshithastores.lakshithastores.service.ItemService;
import com.lakshithastores.lakshithastores.service.WearhouseService;

@Controller
public class WearhouseStoreController {
	@Autowired
	WearhouseService wearhouseService;
	
	@Autowired
	ItemService itemService;
	
	
	@RequestMapping("/DeleteWearhouseItem")
	public String deleteItem(@RequestParam(name="id") Integer id, Model model) {
		Optional<Wearhousestore> item = wearhouseService.findById(id);
		Wearhousestore wearhouse = item.get();
		String name = wearhouse.getItemName();
		String message = name + " Successfuly deleted!";
		wearhouseService.deleteById(id);
		model.addAttribute("msgs", message);
        model.addAttribute("color", "alert-success");
        model.addAttribute("fs", "noprint");
		return "message/Success";
	}
	
	@RequestMapping("/newPurchItem")
	@ResponseBody
	public List<Item> newPurchItem(Model model) {
		List<Item> items = itemService.findAll();
		
		return items;
	}
	
	@RequestMapping("/purchItemCode")
	@ResponseBody
	public Item purchItemCode(@RequestParam("name") String name) {
		 Item item = itemService.findByName(name);
		 return item;
	}
	
	@RequestMapping("/purchItemName")
	@ResponseBody
	public List<Item> purchItemName(@RequestParam("category") String category) {
		System.out.println(category);
		 List<Item> items = itemService.findByCategory(category);
		 System.out.println(items);
		 return items;
	}
	
	@RequestMapping("/PurchaseTable")
	public String purchaseTable(Model model) {
//		List<Wearhousestore> wearhousestores = wearhouseService.findAll();
//		System.out.println(wearhousestores);
//		model.addAttribute("wearhouse", wearhousestores);
		return "PurchaseTable";
	}
	
	
	@RequestMapping("/saveNevPurch")
	@ResponseBody
	public String saveNevPurch(@RequestParam("itemname") String itemname, @RequestParam("code") String code,@RequestParam("date") String date,
			@RequestParam("qty") Integer qty,@RequestParam("pprice") Double pprice,@RequestParam("sprice") Double sprice, Principal principal) {
		
		String purchName = "aa";
		try {
			Wearhousestore store = new Wearhousestore();
			
			store.setItemCode(code);
			store.setItemName(itemname);
			store.setPurchasePrice(pprice);
			store.setSellingPrice(sprice);
			store.setQty(qty);
			
			LocalDate localDate = LocalDate.parse(date);
			
			store.setDate(localDate);
			
//			String loggedUser = principal.getName();
//			System.out.println(loggedUser);
//			store.setCreator(loggedUser);
			
			Wearhousestore purchaseName = wearhouseService.save(store);
			purchName = purchaseName.getItemName();
			return purchName;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	@RequestMapping("/getPurchaseData")
	@ResponseBody
	public List<Wearhousestore> getPurchaseData(){
		List<Wearhousestore> wearhousestores = wearhouseService.findAll();
		System.out.println(wearhousestores);
		return wearhousestores;
	}
	
	@RequestMapping("/viewPurchaseData")
	public String viewPurchaseData(@RequestParam("itemCode") String code,Model model) {
		System.out.println(code);
		Wearhousestore res = wearhouseService.findByItemCode(code);
		model.addAttribute("res", res);
		System.out.println(res);
		return "PurchaseDataView";
		
	}
	
	
}
