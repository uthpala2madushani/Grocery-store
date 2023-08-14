package com.lakshithastores.lakshithastores.service.servceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.CentralTable;
import com.lakshithastores.lakshithastores.repository.CentraRepository;
import com.lakshithastores.lakshithastores.service.CentralService;

@Service
public class CentralServiceIMPL implements CentralService{
	@Autowired
	CentraRepository centraRepository;

	@Override
	public List<CentralTable> findAll() {
		List<CentralTable> list = centraRepository.findAll();
		return list;
	}

}
