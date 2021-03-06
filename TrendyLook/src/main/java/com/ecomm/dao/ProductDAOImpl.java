package com.ecomm.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
		@Autowired
	SessionFactory sessionFactory;
	
	public boolean addProduct(Product product) {
		try
		{
		sessionFactory.getCurrentSession().save(product);
		
		System.out.println("Product Added");
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);	
		return false;
		}
	}

	public boolean deteteProduct(Product product ) {
		try
		{
		sessionFactory.getCurrentSession().delete(product);
		System.out.println("Product deleted");
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
		return false;
		}
	}

	public boolean updateProduct(Product product) {
		try
		{
		sessionFactory.getCurrentSession().update(product);
		System.out.println("Product updated");
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
		return false;
		}
	}

	public  Product getProduct(int productId)	{

		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class, productId);
		session.close();
		return product;
	}

	public List<Product> retrieveProducts()
	{
		Session session=sessionFactory.openSession();
		List<Product> productList=(List<Product>)session.createQuery("from Product").list();
		session.close();
		return productList;
	
	}


}
