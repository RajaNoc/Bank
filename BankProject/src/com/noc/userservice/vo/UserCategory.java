package com.noc.userservice.vo;

import java.util.Set;

public class UserCategory {
	
	private int id;
	
	private String name;
	
	private Set<UserSubCategory> subCategories;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<UserSubCategory> getSubCategories() {
		return subCategories;
	}

	public void setSubCategories(Set<UserSubCategory> subCategories) {
		this.subCategories = subCategories;
	}

}
