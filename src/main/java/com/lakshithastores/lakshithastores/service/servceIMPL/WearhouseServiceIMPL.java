package com.lakshithastores.lakshithastores.service.servceIMPL;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.Wearhousestore;
import com.lakshithastores.lakshithastores.repository.WearhouseRepository;
import com.lakshithastores.lakshithastores.service.WearhouseService;

@Service
public class WearhouseServiceIMPL implements WearhouseService {
	@Autowired
	WearhouseRepository wearhouseRepository;

	@Override
	public List<Wearhousestore> findAll() {
		List<Wearhousestore> store = wearhouseRepository.findAll();
		return store;
	}

	@Override
	public void deleteById(Integer id) {
		wearhouseRepository.deleteById(id);
	}

	@Override
	public Optional<Wearhousestore> findById(Integer id) {
		Optional<Wearhousestore> wearhousestore = wearhouseRepository.findById(id);
		return wearhousestore;
	}

	@Override
	public Wearhousestore save(Wearhousestore store) {
		Wearhousestore res = wearhouseRepository.save(store);
		return res;
	}

	@Override
	public Wearhousestore findByItemCode(String itemCode) {
		Wearhousestore res = wearhouseRepository.findByItemCode(itemCode);
		return res;
	}


//	@Override
//	public List<StoreDetails> findSumByCodeAll() {
//		List<StoreDetails> res = wearhouseRepository.findSumByCodeAll();
//		return res;
//	}



}
