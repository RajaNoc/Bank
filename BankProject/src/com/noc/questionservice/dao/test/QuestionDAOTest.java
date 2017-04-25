package com.noc.questionservice.dao.test;

import static org.junit.Assert.assertEquals;

import java.io.IOException;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;

public class QuestionDAOTest {
private static DAOHelper helper;
	@BeforeClass
	public static void init()
	{
		System.out.println("Before Class.....................");
	 helper = new DAOHelper();	
	}
	
	@Before
	public void info()
	{
		System.out.println("In before.......................");
	}
	@Test(expected = IOException.class)
	public void testAddCategory()
	{
		helper.questionDAO.addCategory("Testing");
	}

	@Test
	public void testAddSubCat() {
		helper.questionDAO.addSubCategory("abc", "java");
	}
	
	@After
	public void finish() {
		System.out.println("In After..............................");
	}
	@AfterClass
	public static void clean(){
		System.out.println("After Class.................................");
		helper=null;
	}
}
