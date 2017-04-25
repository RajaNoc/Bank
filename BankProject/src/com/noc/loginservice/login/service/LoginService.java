package com.noc.loginservice.login.service;

import com.noc.loginservice.login.api.User;

public interface LoginService {

	public boolean findUser(User user);

	public boolean findUserEmail(User user);

	public boolean changePass(User userSs, User userNew);
	
}
