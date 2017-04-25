package com.noc.questionservice.response;

public class AddSubCategoryResponse extends BaseResponse {

	private String description;

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("description [").append(description).append(" ]");
		return super.toString();
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
