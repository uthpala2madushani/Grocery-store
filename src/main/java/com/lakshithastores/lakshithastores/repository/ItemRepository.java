package com.lakshithastores.lakshithastores.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.lakshithastores.lakshithastores.entity.Item;
import com.lakshithastores.lakshithastores.entity.Sales;

public interface ItemRepository extends JpaRepository<Item, Integer>{

	@Query(value = "SELECT * FROM item where name = (:name) ", nativeQuery = true)
	Item findByName(String name);

	@Query(value = "SELECT * FROM item where category = (:category) ", nativeQuery = true)
	List<Item> findByCategory(String category);

	@Query(value = "SELECT * FROM item where name = (:name) ", nativeQuery = true)
	Item findByItemName(String name);
	
	@Query(value = "SELECT purchase_price FROM item where item_code = (:itemId) ", nativeQuery = true)
	Double findByItemId(String itemId);

	void save(Sales sales);


}
