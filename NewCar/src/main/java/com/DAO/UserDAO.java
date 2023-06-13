package com.DAO;

import com.entities.User;

public interface UserDAO {
	public boolean userRegister(User us);
	
	public User login(String email,String password);
	
	
	
}
 