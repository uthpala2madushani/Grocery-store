package com.lakshithastores.lakshithastores.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.Item;

@Service
public interface ItemService{

	List<Item> findAll();

	Optional<Item> findById(Integer id);

	Item save(Item item);

	void deleteById(Integer id);

	int getCount();

	Item findByName(String name);

	List<Item> findByCategory(String category);

	Item findByItemName(String name);



//	void saveItem(ItemDTO itemDTO);


}
