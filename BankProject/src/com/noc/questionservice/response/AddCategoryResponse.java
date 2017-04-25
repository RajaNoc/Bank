package com.noc.questionservice.response;

import java.io.Serializable;

public class AddCategoryResponse extends BaseResponse{
	
	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
     StringBuilder builder = new StringBuilder();
     builder.append("description [").append(description).append("]");
		return builder.toString();
	}
	
	

}
