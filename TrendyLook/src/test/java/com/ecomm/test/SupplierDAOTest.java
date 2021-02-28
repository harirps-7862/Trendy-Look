package com.ecomm.test;
import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Supplier;

public class SupplierDAOTest {
	
	static SupplierDAO supplierDAO;
	
	@BeforeClass
	public static void initialize() {
		
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
			myContext.scan("com.ecomm");
			myContext.refresh();
			
		supplierDAO=(SupplierDAO)myContext.getBean("supplierDAO");	
		
	}

	/*@Test
	public void addSupplierTest()
	{
		
		Supplier supplier=new Supplier();
		supplier.setSupplierId(3);
		supplier.setSupplierName("HariHara Traders");
		supplier.setSupplierAddr("15-22/A/C,Hyd");
		supplier.setDeliveryMode("Express");
		supplier.setDeliveryStatus("Delivered");
		
			assertTrue("Problem in inserting Supplier:", supplierDAO.addSupplier(supplier) );
	}*/
	
	@Test
	public void deteSupplierTest()
	{
	Supplier supplier=supplierDAO.getSupplier(3);
	supplier.setSupplierId(3);
	
	assertTrue("problem in deleting Supplier:", supplierDAO.deleteSupplier(supplier));
	}
	
	/*@Test
	public void updateSupplierTest()
	{
		Supplier supplier=supplierDAO.getSupplier(2);
		supplier.setSupplierAddr("125-K/lucknow");
		
		assertTrue("Problem in updating Supplier",supplierDAO.updateSupplier(supplier));

	}*/
	
	

}
