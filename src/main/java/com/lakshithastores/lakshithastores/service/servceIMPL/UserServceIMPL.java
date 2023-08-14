package com.lakshithastores.lakshithastores.service.servceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakshithastores.lakshithastores.entity.User;
import com.lakshithastores.lakshithastores.repository.UserRepository;
import com.lakshithastores.lakshithastores.service.UserService;

@Service
public class UserServceIMPL implements UserService{

	@Autowired
	UserRepository userRepository;
	
	
	@Override
	public User save(User user) {
		User res = userRepository.save(user);
		return res;
	}


	@Override
	public User findByUserd(String userId) {
		User user = userRepository.findByUserId(userId);
		return user;
	}


	@Override
	public int getExistUserByUserId(String userId) {
		int count = userRepository.getExistUserByUserId(userId);
		return count;
	}


	@Override
	public String findPasswordByUserd(String userId) {
		String passw = userRepository.findPasswordByUserd(userId);
		return passw;
	}


	@Override
	public String findUserNameByUserId(String userId) {
		String userName = userRepository.findUserNameByUserId(userId);
		return userName;
	}


	@Override
	public List<User> finAll() {
		List<User> userList = userRepository.findAll();
 		return userList;
	}


	

}
