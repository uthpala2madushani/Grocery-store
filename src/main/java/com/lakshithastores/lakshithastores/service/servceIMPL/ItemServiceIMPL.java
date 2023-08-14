package com.lakshithastores.lakshithastores.service.servceIMPL;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.Item;
import com.lakshithastores.lakshithastores.repository.ItemRepository;
import com.lakshithastores.lakshithastores.service.ItemService;

@Service
public class ItemServiceIMPL implements ItemService {
	@Autowired
	ItemRepository itemRepository;
	
	@Override
	public List<Item> findAll() {
		List<Item> items = itemRepository.findAll();
		return items;
	}

	@Override
	public Optional<Item> findById(Integer id) {
		Optional<Item> item = itemRepository.findById(id);
		return item;
	}

	@Override
	public Item save(Item item) {
		Item res = itemRepository.save(item);
		return res;
		
	}

	@Override
	public void deleteById(Integer id) {
		itemRepository.deleteById(id);
		
	}

	@Override
	public int getCount() {
		int count = (int) itemRepository.count();
		return count;
	}

	@Override
	public Item findByName(String name) {
		 Item item = itemRepository.findByName(name);
		return item;
	}

	@Override
	public List<Item> findByCategory(String category) {
		List<Item> items = itemRepository.findByCategory(category);
		return items;
	}

	@Override
	public Item findByItemName(String name) {
		Item price = itemRepository.findByItemName(name);
		return price;
	}

	

	



	
	
	
	

}
