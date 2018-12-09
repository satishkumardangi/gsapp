/**
 * 
 */
package com.gsapp.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gsapp.users.dao.UserDao;
import com.gsapp.users.model.User;

/**
 * @author satishk
 *
 */
@Service
public class UserService {
	@Autowired
	UserDao userDao;
	public void addUser(User user) {
		userDao.saveUser(user);
	}
}
