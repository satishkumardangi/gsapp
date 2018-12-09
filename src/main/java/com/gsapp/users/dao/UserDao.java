package com.gsapp.users.dao;

import com.gsapp.users.model.User;

/**
 * @author satishk
 *
 */
public interface UserDao {

	User findByUserName(String username);
	
	void saveUser(User user);

}