package com.lakshithastores.lakshithastores.service.servceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.Customer;
import com.lakshithastores.lakshithastores.repository.CustomerRepository;
import com.lakshithastores.lakshithastores.service.CustomerService;

@Service
public class CustomerServiceIMPL implements CustomerService{
	@Autowired
	CustomerRepository customerRepository;

	@Override
	public Customer save(Customer cu) {
		Customer res = customerRepository.save(cu);
		return res;
	}

	@Override
	public List<Customer> getAll() {
		List<Customer> customers = customerRepository.findAll();
		return customers;
	}

}
