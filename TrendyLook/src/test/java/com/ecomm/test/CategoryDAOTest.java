package com.ecomm.test;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Customer;

public class CategoryDAOTest 
{
	static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		categoryDAO=(CategoryDAO)myContext.getBean("categoryDAO");
	}
	
	/*@Test
	public void addCustomerTest()
	{
		 Category category=new Category();
		 category.setCategoryId(3);
		 category.setCategoryName("Gadgets");
		 category.setCategoryDesc("Bracelets,Chains available");
		
			
		assertTrue("Problem in inserting Category",categoryDAO.addCategory(category));
	}*/

	@Test
	public void deleteCategoryTest()
	{
		Category category=categoryDAO.getCategory(3);
		category.setCategoryId(3);
		
		assertTrue("Problem in Deleting Category",categoryDAO.deleteCategory(category));

		
	}
	
	@Test
	public void updateCategoryTest()
	{
	Category category=categoryDAO.getCategory(5);
	
		assertTrue("Problem in Updating Category",categoryDAO.updateCategory(category));

	}
	
	
}