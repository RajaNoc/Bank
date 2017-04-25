package com.noc.questionservice.request;

import java.io.Serializable;

@SuppressWarnings("serial")
public class AddCategoryRequest implements Serializable {
	
	private String catName;

	

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}
	@Override
	public String toString() {
      StringBuilder builder = new StringBuilder();
      
      builder.append("AddCategoryRequest :: [catName = ").append(catName).append("]");
		return builder.toString();
	}

}
