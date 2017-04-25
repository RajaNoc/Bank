package com.noc.userservice.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.noc.userservice.dao.impl.UserDAO;
import com.noc.userservice.utils.Loggers;
import com.noc.userservice.vo.User;
import com.noc.userservice.vo.UserGroup;

@Service
public class UserService {
	@Autowired
	private UserDAO dao;

	public List<UserGroup> userGroup(){
		System.out.println("UserSevice.userGroup");
		List<UserGroup> l=dao.userGroup();

		return l;


	}

	public boolean userGroupnameEdit(String gname,String oldname) {
		Loggers.USER_LOGGER.debug("UserSevice.userGroupnameEdit");
		boolean flag=dao.userGroupnameEdit(gname,oldname);
		return flag;
	}
	
	public boolean userGroupnameDelete(String gname) {
		Loggers.USER_LOGGER.debug("UserSevice.userGroupnameEdit");
		boolean flag=dao.userGroupnameDelete(gname);
		return flag;
	}
	
	public List<UserGroup> userGroupnameSearch(String gname) {
		Loggers.USER_LOGGER.debug("UserSevice.userGroupnameSearch");
		List<UserGroup> flag=dao.userGroupnameSearch(gname);
		return flag;
	}

	public boolean userGroupnameAdd(UserGroup u) {
		Loggers.USER_LOGGER.debug("UserSevice.userGroupnameAdd");
		boolean flag=dao.userGroupnameAdd(u);
		return flag;
	}

	public int addUserToGroup(User u) {
		Loggers.USER_LOGGER.debug("UserService.addUserTOGroup");
		int result=dao.addUserTOGroup(u);
		
		return result;
	}

	public List<User> userList() {
		System.out.println("UserSevice.userList");
		List<User> l=dao.userList();

		return l;
	}

	public boolean userDeletet(String uid) {
		Loggers.USER_LOGGER.debug("UserSevice.userDeletet");
		boolean flag=dao.userDeletet(uid);
		return flag;	}

	public List<User> userListByGroup(String groupname) {
		System.out.println("UserSevice.userListByGroup"+groupname);
		
		List<User> l=dao.userListByGroup(groupname);
		Loggers.USER_LOGGER.debug("....Service");

		return l;
	}

	public int importUserTOGroup(String[] country) {
		Loggers.USER_LOGGER.debug("UserService.importUserTOGroup");
		int result=dao.importUserTOGroup(country);
		
		return result;
	}

	public List<User> userMailSearch(String gname) {
		Loggers.USER_LOGGER.debug("UserSevice.userMailSearch");
		List<User> flag=dao.userMailSearch(gname);
		return flag;
	}
}
