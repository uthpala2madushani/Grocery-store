package com.lakshithastores.lakshithastores.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.Wearhousestore;

@Service
public interface WearhouseService {

	List<Wearhousestore> findAll();

	void deleteById(Integer id);

	Optional<Wearhousestore> findById(Integer id);

	Wearhousestore save(Wearhousestore store);

	Wearhousestore findByItemCode(String itemCode);

}
