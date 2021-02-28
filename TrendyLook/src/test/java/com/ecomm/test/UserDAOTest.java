package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest {
	
		static UserDAO userDAO;
		
		@BeforeClass
		public static void initialize()
		{
			AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
			myContext.scan("com.ecomm");
			myContext.refresh();
			
			userDAO=(UserDAO)myContext.getBean("userDAO");
		
	}
		@Test
		public void registerUserTest()
		{
			UserDetail user=new UserDetail();
			user.setUserName("Ravi");
			user.setPassword("12345");
			user.setCustomerName("RaviKiran");
			user.setEnabled(true);
			user.setEmailId("ravi@gmail.com");
			user.setAddress("Chicago,USA");
			user.setMobileNo("996343695");
			user.setUsertype("User");
			user.setRole("ROLE_USER");
			System.out.println("User Added");
			
			assertTrue("Problem in Inserting UserDetail :",userDAO.registerUser(user));
		}

}
