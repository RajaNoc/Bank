package com.noc.questionservice.request;

import java.io.Serializable;

@SuppressWarnings("serial")
public class AddSubCategoryRequest  implements Serializable{
	
	private String catName;
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public String getSubCatName() {
		return subCatName;
	}
	public void setSubCatName(String subCatName) {
		this.subCatName = subCatName;
	}
	private String subCatName;
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AddSubCategoryRequest :: [catName =").append(catName).append(" ] subCatName").append(subCatName).append("]");
		return super.toString();
	}

}
