package com.noc.loginservice.login.dao.impl;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.noc.loginservice.login.api.User;
import com.noc.loginservice.login.dao.LoginDAOI;
import com.noc.loginservice.utils.Loggers;

public class LoginDAO extends JdbcDaoSupport implements LoginDAOI{

	public boolean findUser(User user) {
		Loggers.LOGIN_LOGGER.debug("UserDAO.findUser: userName:" + user.getUserName());
		
		int count = getJdbcTemplate().queryForInt(
				"select count(f_email) from t_users_table where f_email='" + user.getUserName() + "' and f_password='"+user.getPassword()
				+ "'");
		
		Loggers.LOGIN_LOGGER.debug("UserDAOfindUser return : true  if count=1"+count);
		return (count == 1);
	}

	public boolean findUserEmail(String email) {
		Loggers.LOGIN_LOGGER.debug("UserDAO.findUserEmail");
		Loggers.LOGIN_LOGGER.debug(email);
		int count=getJdbcTemplate().queryForInt("select count(f_email) from t_users_table where f_email='"+email+"'");
		Loggers.LOGIN_LOGGER.debug("UserDAO.findUser return : true  if count=1"+count);
		return (count==1);
	}

	@Override
	public boolean changePass(String email,String newPassword) {		
		Loggers.LOGIN_LOGGER.debug("UserDAO.changePass");
		Loggers.LOGIN_LOGGER.debug(email+".."+newPassword);
		String sql="update t_users_table set f_password=? where f_email=?";
		
		int count=getJdbcTemplate().update(sql,new Object[]{newPassword,email} );
		Loggers.LOGIN_LOGGER.debug("UserDAO.findUser return : true if count=1"+count);
		return (count==1);
	}

}
