package com.lakshithastores.lakshithastores.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.Employee;

@Service
public interface EmployeeService {

	Employee save(Employee employee);

	List<Employee> findAll();

	Employee findByName(String empName);

	Employee findByEmpNo(String empNo);

}
