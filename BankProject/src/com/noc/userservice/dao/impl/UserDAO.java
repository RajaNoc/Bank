package com.noc.userservice.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.noc.userservice.dao.UserDAOI;
import com.noc.userservice.utils.Loggers;
import com.noc.userservice.vo.User;
import com.noc.userservice.vo.UserGroup;

public class UserDAO implements UserDAOI{

	@Autowired
	private JdbcTemplate jt;

	RowMapper<UserGroup> ugMapper= new RowMapper<UserGroup>(){
		@Override
		public UserGroup mapRow(ResultSet rs, int index) throws SQLException {
			System.out.println("In UserGroup::mapRow()");

			UserGroup u=new UserGroup();
			u.setGroupname(rs.getString(1));
			u.setGroupCount(rs.getInt(2));
			System.out.println(rs.getString(1));
			return u;
		}
	};

	RowMapper<User> uMapper= new RowMapper<User>(){
		@Override
		public User mapRow(ResultSet rs, int index) throws SQLException {
			System.out.println("In UserGroup::mapRow()");

			User u=new User();
			u.setUser_id(rs.getString(1));
			u.setEmail(rs.getString(2));
			u.setPassword(rs.getString(3));
			u.setGroupnamef(rs.getString(4));
			

			Loggers.USER_LOGGER.debug("setting values to vo");


			return u;
		}
	};


	@Override
	public List<UserGroup>  userGroup() {

		String sql="select groupname,count(*) from T_GROUP_USERDETAILS group by(groupname)";
	/*	String sql="select * from usergroup";*/

		return (List<UserGroup>)jt.query(sql, ugMapper);
	}
	public boolean userGroupnameEdit(String gname,String oldname) {
		Loggers.USER_LOGGER.debug("UserSDAO.userGroupnameEdit");
		System.out.println(gname+"..."+oldname);
		String sql="update usergroup set groupname=? where groupname=?";
		int count=jt.update(sql,gname,oldname);

		return (count==1);

	}

	public boolean userGroupnameDelete(String gname) {
		Loggers.USER_LOGGER.debug("UserSDAO.userGroupnameDelete");
		System.out.println(gname+"...");
		String sql="delete  from usergroup where groupname=?";
		int count=jt.update(sql,gname);

		return (count==1);

	}

	public List<UserGroup> userGroupnameSearch(String gname) {
		Loggers.USER_LOGGER.debug("UserSDAO.userGroupnameSearch");
		System.out.println(gname+"...");
		return (List<UserGroup>)jt.query("select * from usergroup where groupname like'"+gname+"%'",new ResultSetExtractor<List<UserGroup>>() {
			@Override
			public List<UserGroup> extractData(ResultSet rs)
					throws SQLException, DataAccessException {
				List<UserGroup> list=new ArrayList<UserGroup>();

				while(rs.next()){	
					UserGroup u=new UserGroup();
					u.setGroupname(rs.getString(1));
					System.out.println(rs.getString(1));
					list.add(u);
				}
				return list;
			}
		});

	}
	public boolean userGroupnameAdd(UserGroup u) {
		Loggers.USER_LOGGER.debug("UserSDAO.userGroupnameAdd");
		System.out.println(u.getGroupname()+"...");
		String sql="insert into usergroup values(?)";
		int count=jt.update(sql,u.getGroupname());

		return (count==1);
	}
	public int addUserTOGroup(User ur) {
		Loggers.USER_LOGGER.debug("UserSDAO.addUserTOGroup");

		String[] emails = ur.getEmail().split(",");
		int count=0;
		for(String email : emails) {

			System.out.println("UserSDAO.addUserToGroup="+ur.getGroupnamef());

			String sql="INSERT INTO t_group_userdetails "
					+ "(user_id , email ,password ,groupname) "
					+ "VALUES (userid_seq.NEXTVAL, ?,'abc',(select groupname from usergroup where groupname=?))";
			count=jt.update(sql,email,ur.getGroupnamef());


		}
		return count;
	}
	public List<User> userList() {
		String sql="select * from t_group_userdetails";

		return (List<User>)jt.query(sql, uMapper);

	}
	public boolean userDeletet(String uid) {
		Loggers.USER_LOGGER.debug("UserSDAO.userDeletet");
		System.out.println(uid+"...");
		String sql="delete  from t_group_userdetails where USER_ID=?";
		int count=jt.update(sql,uid);

		return (count==1);
	}
	public List<User> userListByGroup(String groupname) {
		Loggers.USER_LOGGER.debug("UserSDAO.userListByGroup");
		String sql="select * from t_group_userdetails where groupname='"+groupname+"'";

		return (List<User>)jt.query(sql, uMapper);
	}
	public int importUserTOGroup(String[] emails) {
		Loggers.USER_LOGGER.debug("UserSDAO.importUserTOGroup");

	
		int count=0;
			System.out.println("UserSDAO.addUserToGroup="+emails[1]);
			String sql="INSERT INTO t_group_userdetails "
					+ "(user_id , email ,password ,groupname) "
					+ "VALUES (userid_seq.NEXTVAL, ?,'abc',(select groupname from usergroup where groupname=?))";
			count=jt.update(sql,emails[0],emails[1]);
		return count;
	}
	@Override
	public List<User> userMailSearch(String email) {
		Loggers.USER_LOGGER.debug("UserSDAO.userMailSearch");
		System.out.println(email+"...");
		return (List<User>)jt.query("select user_id,email, groupname from t_group_userdetails where email like'"+email+"%'",new ResultSetExtractor<List<User>>() {
			@Override
			public List<User> extractData(ResultSet rs)
					throws SQLException, DataAccessException {
				List<User> list=new ArrayList<User>();

				while(rs.next()){	
					User u=new User();
					u.setUser_id(rs.getString(1));
					u.setEmail(rs.getString(2));
					u.setGroupnamef(rs.getString(3));
					
					Loggers.USER_LOGGER.debug(rs.getString(1));
					Loggers.USER_LOGGER.debug(rs.getString(2));
					Loggers.USER_LOGGER.debug(rs.getString(3));
					list.add(u);
				}
				return list;
			}
		});

	}
}