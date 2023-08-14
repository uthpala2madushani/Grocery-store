package com.lakshithastores.lakshithastores.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lakshithastores.lakshithastores.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer>{

}
