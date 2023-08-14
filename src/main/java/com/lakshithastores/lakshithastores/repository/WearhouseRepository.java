package com.lakshithastores.lakshithastores.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.lakshithastores.lakshithastores.entity.Wearhousestore;

public interface WearhouseRepository extends JpaRepository<Wearhousestore, Integer>{
	
	@Query(value = "SELECT * FROM wear_house_store WHERE item_code = (:itemCode)", nativeQuery = true)
	Wearhousestore findByItemCode(String itemCode);

//	@Query(value = "SELECT item_code,item_name, SUM(qty) FROM wear_house_store GROUP BY item_code", nativeQuery = true)
//	List<StoreDetails> findSumByCodeAll();

//	@Query(value = "SELECT item_name FROM lakshithastoresdb where document_id = ?id ", nativeQuery = true)
//	String finditemNameById(Integer id);



}
