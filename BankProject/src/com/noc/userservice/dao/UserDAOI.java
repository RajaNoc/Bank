package com.noc.userservice.dao;

import java.util.List;

import com.noc.userservice.vo.User;
import com.noc.userservice.vo.UserGroup;

public interface UserDAOI {

	List<UserGroup> userGroup();
	boolean userGroupnameEdit(String gname,String oldname);
	boolean userGroupnameDelete(String gname);
	boolean userGroupnameAdd(UserGroup u);
	List<UserGroup> userGroupnameSearch(String gname);
	List<User> userMailSearch(String email);


}
