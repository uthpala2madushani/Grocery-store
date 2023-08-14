package com.lakshithastores.lakshithastores.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.User;

@Service
public interface UserService {

	User save(User user);

	User findByUserd(String userId);

	int getExistUserByUserId(String userId);

	String findPasswordByUserd(String userId);

	String findUserNameByUserId(String userId);

	List<User> finAll();


}
