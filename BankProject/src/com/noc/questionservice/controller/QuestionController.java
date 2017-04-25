package com.noc.questionservice.controller;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.noc.questionservice.request.AddCategoryRequest;
import com.noc.questionservice.request.AddSubCategoryRequest;
import com.noc.questionservice.response.AddCategoryResponse;
import com.noc.questionservice.response.AddSubCategoryResponse;
import com.noc.questionservice.service.QuestionServiceCache;
import com.noc.questionservice.service.api.QuestionService;

@Controller
public class QuestionController {
	
	private Logger logger = Logger.getLogger(QuestionController.class);
	
	@Autowired
	QuestionService service;
	
	/*@RequestMapping(value ={"/question.addCategory"}, method ={org.springframework.web.bind.annotation.RequestMethod.POST})
	@ResponseBody
	public ModelAndView addCategory(HttpServletRequest req) {
		String catName = req.getParameter("categoryname");
		logger.info("QuestionController.addCategory:" + catName);
		
		service.addCategory(catName);
		return new ModelAndView("questionCategory", "", "");
	}
	
	@RequestMapping("/question.addSubCategory")
	public ModelAndView addSubCategory(HttpServletRequest req) {
		String catName = req.getParameter("catName");
		String subCatName = req.getParameter("subCatName");
		
		logger.info("QuestionController.addSubCategory:" + catName + " " + subCatName);
		
		service.addSubCategory(catName, subCatName);
		Set<String> allCategories = QuestionServiceCache.getAllCategories();
		
		req.setAttribute("allCategories", allCategories);
		return new ModelAndView("questionSubCategory", "allCategories", allCategories);
	}*/
	
	@RequestMapping(value ={"/question.addCategory"}, method ={org.springframework.web.bind.annotation.RequestMethod.POST})
	@ResponseBody
	public AddCategoryResponse addCategory(@RequestBody AddCategoryRequest req) {
		String catName = req.getCatName();
		logger.info("QuestionController.addCategory:" + catName);
		
		return service.addCategory(catName);
	}
	
	@RequestMapping(value ={"/question.addSubCategory"} , method ={org.springframework.web.bind.annotation.RequestMethod.POST})
	@ResponseBody
	public AddSubCategoryResponse addSubCategory(@RequestBody AddSubCategoryRequest req) {
		String catName = req.getCatName();
		String subCatName = req.getSubCatName();
		
		logger.info("QuestionController.addSubCategory:" + catName + " " + subCatName);
		
		AddSubCategoryResponse reponse = service.addSubCategory(catName, subCatName);
		
		return reponse;
	}
	
	
	@RequestMapping("/question.loadCategoryDynamic")
	public ModelAndView loadCategoryDynamic(HttpServletRequest req) {
		Set<String> allCategories = QuestionServiceCache.getAllCategories();
		//req.setAttribute("allCategories", allCategories);
		return new ModelAndView("questionSubCategory", "allCategories", allCategories);
	}

}
