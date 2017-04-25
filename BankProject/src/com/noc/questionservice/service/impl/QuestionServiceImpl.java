package com.noc.questionservice.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.noc.questionservice.dao.QuestionDAO;
import com.noc.questionservice.response.AddCategoryResponse;
import com.noc.questionservice.response.AddSubCategoryResponse;
import com.noc.questionservice.response.BaseResponse.ErrorCode;
import com.noc.questionservice.response.BaseResponse.Status;
import com.noc.questionservice.service.QuestionServiceCache;
import com.noc.questionservice.service.QuestionServiceCache.CatSubCatMap;
import com.noc.questionservice.service.api.QuestionService;

public class QuestionServiceImpl implements QuestionService {

	Logger logger = Logger.getLogger(QuestionServiceImpl.class);
	
	@Autowired
	QuestionDAO questionDAO;

/*	@Override
	public void addCategory(String catName) {
		logger.info("QuestionServiceImpl.addCategory catName:" + catName);
		QuestionServiceCache.addCategory(catName);
		questionDAO.addCategory(catName);
		
		QuestionServiceCache.printCacheData();
	}

	@Override
	public void addSubCategory(String catName, String subCatName) {
		logger.info("QuestionServiceImpl.addSubCategory catName:" + catName + "|subCatName:" + subCatName);
		
		if(!QuestionServiceCache.containsCategory(catName)) {
			logger.info("Adding Category");
			addCategory(catName);
		}

		QuestionServiceCache.addSubCategory(catName, subCatName);
		questionDAO.addSubCategory(catName, subCatName);
		
		QuestionServiceCache.printCacheData();
	} 
	*/
	
	@Override
	public AddCategoryResponse addCategory(String catName) {
		logger.info("QuestionServiceImpl.addCategory catName:" + catName);
		QuestionServiceCache.addCategory(catName);
		try {
		questionDAO.addCategory(catName);
		AddCategoryResponse response = new AddCategoryResponse();
		
		QuestionServiceCache.printCacheData();
		response.setStatus(Status.SUCCESS);
		response.setErrorDescription("categorty added successfully");
		return response;
		}
		catch (Exception e) {
			e.printStackTrace();
			AddCategoryResponse response = new AddCategoryResponse();
			response.setStatus(Status.FAILURE);
			response.setErrorCode(ErrorCode.TECHNICAL_ERROR);
			response.setErrorDescription("categorty not added successfully");
			return response;
		}
	}

	@Override
	public AddSubCategoryResponse addSubCategory(String catName, String subCatName) {
		logger.info("QuestionServiceImpl.addSubCategory catName:" + catName + "|subCatName:" + subCatName);
		
		if(!QuestionServiceCache.containsCategory(catName)) {
			logger.info("Adding SubCategory");
			addCategory(catName);
		}
 try {
		QuestionServiceCache.addSubCategory(catName, subCatName);
		questionDAO.addSubCategory(catName, subCatName);
		QuestionServiceCache.printCacheData();
		 AddSubCategoryResponse  response = new AddSubCategoryResponse();
		 response.setStatus(Status.SUCCESS);
		 response.setErrorDescription("Subcategory  added successfully");
		 return response;
		
 }
 catch(Exception e) {
	 e.printStackTrace();
	 AddSubCategoryResponse  response = new AddSubCategoryResponse();
	 response.setStatus(Status.FAILURE);
	 response.setErrorCode(ErrorCode.INVALID_REQUEST);
	 response.setErrorDescription("Subcategory not added successfully");
	 return response;
 }
	} 
	
	public void refreshCatNSubCat() {
		logger.info("QuestionServiceImpl.refreshCatNSubCat");
		List<CatSubCatMap> catSubCatMapping = questionDAO.refreshCatNSubCat();
		
		QuestionServiceCache.refreshCache(catSubCatMapping);
	}
}
