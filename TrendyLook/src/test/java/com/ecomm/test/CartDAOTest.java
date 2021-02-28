package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CartDAO;
import com.ecomm.model.Cart;

public class CartDAOTest {
	
	static CartDAO cartDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		cartDAO=(CartDAO)myContext.getBean("cartDAO");
	}
	
	@Test
	public void addCartTest()
	{
		 Cart cart=new Cart();
		 cart.setItemId(1011);
		 cart.setProductId(1);
		 cart.setPayment("payment done");
		 cart.setOrderDate("14-Feb-2021");
		 cart.setPrice(2500);
		 cart.setProductName("Scumbblem slim shirt");
		 cart.setQuantity(1);
		 cart.setTotalPrice(2500);
		 
		
			
		assertTrue("Problem in inserting Cart",cartDAO.addCart(cart));
	}

}
