package com.lakshithastores.lakshithastores.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.lakshithastores.lakshithastores.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer>{

	@Query(value = "SELECT * FROM employee where emp_ameo = (:empName) ", nativeQuery = true)
	Employee findByName(String empName);

	@Query(value = "SELECT * FROM employee where emp_no = (:empNo) ", nativeQuery = true)
	Employee findByEmpNo(String empNo);

	
	
	

	
	

}
