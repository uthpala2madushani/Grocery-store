package com.lakshithastores.lakshithastores.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.lakshithastores.lakshithastores.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	
	@Query(value = "SELECT * FROM user where user_id = (:userId) ", nativeQuery = true)
	User findByUserId(String userId);

	@Query(value = "SELECT count(user_id) FROM user where user_id = (:userId) ", nativeQuery = true)
	int getExistUserByUserId(String userId);
	
	@Query(value = "SELECT password FROM user where user_id = (:userName) ", nativeQuery = true)
	String findPasswordByUserd(String userName);
	
	@Query(value = "SELECT name FROM user where user_id = (:userId) ", nativeQuery = true)
	String findUserNameByUserId(String userId);

	

}
