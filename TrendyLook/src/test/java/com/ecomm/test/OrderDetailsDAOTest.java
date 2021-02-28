package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.OrderDetailsDAO;
import com.ecomm.model.OrderDetails;

public class OrderDetailsDAOTest {

	static OrderDetailsDAO orderdetailsDAO;

	@BeforeClass
	public static void initialize() {

		AnnotationConfigApplicationContext myContext = new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		orderdetailsDAO=(OrderDetailsDAO)myContext.getBean("orderdetailsDAO");

	}
	
	@Test
	public void addOrderDetailsTest()
	{
		OrderDetails order=new OrderDetails();
		order.setOrderId(4);
		order.setTrackingId("XT140");
		order.setOrderDetails("Buffalo jeans");
		order.setPrice(2450);
		order.setPayment("prepaid");
		
		assertTrue("Problem in inserting order",orderdetailsDAO.addOrderDetails(order));
	}
	
	/*@Test
	public void deleteOrderDetailsTest()
	{
		OrderDetails order=new OrderDetails();
		order.setOrderId(3);
		
	}*/
	

}
