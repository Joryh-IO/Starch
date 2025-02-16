package com.popcorn.starch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.popcorn.starch.entity.User;
import com.popcorn.starch.repo.UserRepository;

public class LoginService {
	@Autowired
	UserRepository userRepository;

	public User authenticateUser(String username, String password) {
		List<User> userList = userRepository.findByPhonenumber(username);

		if (userList.size() > 0) {
			User currUser = userList.get(0);
			if (currUser.getPassword().equals(password)) {
				return currUser;
			} else {
				return null;
			}
		} else {
			return null;
		}

	}
}
