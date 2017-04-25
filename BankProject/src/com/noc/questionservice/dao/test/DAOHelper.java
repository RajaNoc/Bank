package com.noc.questionservice.dao.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.noc.questionservice.dao.QuestionDAO;

public class DAOHelper {
public  QuestionDAO questionDAO=null;
	
	public  DAOHelper() {
		ApplicationContext context = 
		    	new ClassPathXmlApplicationContext("all-module.xml");
	
		this.questionDAO =(QuestionDAO) context.getBean("questionDAO");
		
		System.out.println("object created");
	}
	
/*	public static void main(String[] args) {
		DAOHelper helper = new DAOHelper();
	}*/

}
