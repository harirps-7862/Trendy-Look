package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

public class ProductDAOTest {
	
	static ProductDAO productDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		productDAO=(ProductDAO)myContext.getBean("productDAO");
		
	}
	
	/*@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductId(5);
		product.setProductName("Indigo Nation");
		product.setPrice(2500);
		product.setStock(622);
		product.setProductDesc("Slim fit shirt for men");
		
		assertTrue("Problem in inserting product",productDAO.addProduct(product));
	
	}*/
	
	/*@Test
public void deleteProduct() {
	
		Product product=productDAO.getProduct(7);
		productDAO.getProduct(7);
		
		assertTrue("Problem in deleting Product:",productDAO.deteteProduct(product));
		
}*/
	@Test
	public void updateProduct() {
		
		Product product=productDAO.getProduct(3);
			product.setPrice(1500);
			product.setProductName("LouisPhilippe");
			product.setStock(122);
			product.setProductDesc("LP shirt for men");
			
					
			assertTrue("Problem in updating Product:",productDAO.updateProduct(product));
			
	}
	
}