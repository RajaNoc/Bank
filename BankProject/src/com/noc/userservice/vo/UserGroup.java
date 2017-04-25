package com.noc.userservice.vo;

public class UserGroup {
	private String groupname;
	private int groupCount; 

	

	public int getGroupCount() {
		return groupCount;
	}

	public void setGroupCount(int groupCount) {
		this.groupCount = groupCount;
	}

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	
	@Override
	public String toString() {
		return "UserGroup [groupname=" + groupname + "]";
	}

}
