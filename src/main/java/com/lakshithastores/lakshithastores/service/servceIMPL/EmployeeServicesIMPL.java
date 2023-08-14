package com.lakshithastores.lakshithastores.service.servceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.Employee;
import com.lakshithastores.lakshithastores.repository.EmployeeRepository;
import com.lakshithastores.lakshithastores.service.EmployeeService;

@Service
public class EmployeeServicesIMPL implements EmployeeService{

	@Autowired
	EmployeeRepository employeeRepository;
	
	@Override
	public Employee save(Employee employee) {
		Employee e = employeeRepository.save(employee);
		return e;
	}

	@Override
	public List<Employee> findAll() {
		List<Employee> empList = employeeRepository.findAll();
		return empList;
	}

	@Override
	public Employee findByName(String empName) {
		Employee user = employeeRepository.findByName(empName);
		return user;
	}

	@Override
	public Employee findByEmpNo(String empNo) {
		Employee employee = employeeRepository.findByEmpNo(empNo);
		return employee;
	}

}
