package com.noc.questionservice.service;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.springframework.http.converter.json.MappingJacksonHttpMessageConverter;

import org.apache.log4j.Logger;

public class QuestionServiceCache {

	private static Logger logger = Logger.getLogger(QuestionServiceCache.class);

	private static Map<String, Set<String>> catSubCatCache = 
			new ConcurrentHashMap<String, Set<String>>();

	public static void addCategory(String catName) {
		if(!catSubCatCache.containsKey(catName)) {
			catSubCatCache.put(catName, new HashSet<String>());
		}
	}

	public static void addSubCategory(String catName, String subCatName) {
		if(!catSubCatCache.containsKey(catName)) {
			catSubCatCache.put(catName, new HashSet<String>());
		}

		Set<String> subcategories = catSubCatCache.get(catName);
		subcategories.add(subCatName);
	}

	public static Set<String> getAllCategories() {
		return catSubCatCache.keySet();
	}

	public static boolean containsCategory(String catName) {
		return catSubCatCache.containsKey(catName);
	}

	public static Set<String> getSubCategories(String catName) {
		Set<String> subCategories = catSubCatCache.get(catName);

		if(subCategories == null) {
			subCategories = new HashSet<String>();
		}
		return subCategories;
	}

	public static void printCacheData() {
		logger.info("QuestionServiceCache:" + catSubCatCache);
	}

	public class CatSubCatMap {
		private String catName;
		private String subCatName;
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
	}

	private static void reset() {
		logger.info("Resetting Cache");
		catSubCatCache.clear();
	}

	public static void refreshCache(List<CatSubCatMap> catSubCatMapping) {
		logger.info("refreshing cache");

		reset();

		for (CatSubCatMap catSubCatMap : catSubCatMapping) {
			String catName = catSubCatMap.getCatName();
			String subCatName = catSubCatMap.getSubCatName();

			Set<String> subCategories = catSubCatCache.get(catName);
			if(subCategories == null) {
				subCategories = new HashSet<String>();
				catSubCatCache.put(catName, subCategories);
			}
			if(subCatName != null) {
				subCategories.add(subCatName);
			}
		}

		logger.info("Loaded new cache data:" + catSubCatCache);
	}
}
