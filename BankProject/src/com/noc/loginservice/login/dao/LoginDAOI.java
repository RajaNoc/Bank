package com.noc.loginservice.login.dao;

import com.noc.loginservice.login.api.User;

public interface LoginDAOI {
	
	public boolean findUser(User user);

	public boolean findUserEmail(String email);

	public boolean changePass(String email,String newPassword);

}
