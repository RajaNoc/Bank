package com.noc.questionservice.service.api;

import com.noc.questionservice.response.AddCategoryResponse;
import com.noc.questionservice.response.AddSubCategoryResponse;

public interface QuestionService {
	
	//public void addCategory(String catName);
	public AddCategoryResponse addCategory(String catName);
	
	//public void addSubCategory(String catName, String subCatName);
	public AddSubCategoryResponse addSubCategory(String catName, String subCatName);
}
