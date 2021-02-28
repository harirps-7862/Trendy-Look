package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Cart;


@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	public boolean addCart(Cart cart) {
		try
		{
		sessionFactory.getCurrentSession().save(cart);
		
		System.out.println("Cart Added");
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);	
		return false;
		}
	}
	
	public boolean deleteCart(Cart cart ) {
		try
		{
		sessionFactory.getCurrentSession().delete(cart);
		System.out.println("Cart Deleted");
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:" +e);
		return false;
		}
	}

	public boolean updateCart(Cart cart) {
		try
		{
		sessionFactory.getCurrentSession().update(cart);
		System.out.println("Cart Updated");
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}
	
	public  Cart getCartbyId(int cartId)	{

		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartId);
		session.close();
		return cart;
	}


	
	
	public List<Cart> retrieveCart(String userName)
	{
		Session session=sessionFactory.openSession();
		
		Query query=session.createNamedQuery("from Cart where userName:=userName and payment='No'");
		query.setString("userName", userName);
		List<Cart> cartList=(List<Cart>)query.list();
		session.close();
		return cartList;
	
	}
	

}
