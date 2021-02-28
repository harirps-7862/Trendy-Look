 package com.ecomm.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.UserDetail;

@Repository("userDAO")
 @Transactional

 public class UserDetailDAOImpl implements UserDAO 
{
	 @Autowired
	 SessionFactory sessionFactory;
	 
	 public boolean registerUser(UserDetail user)
	 {
		try
		{
			sessionFactory.getCurrentSession().save(user); 
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	 }
	 public boolean addUser(UserDetail user)
	 {
		try
		{
			sessionFactory.getCurrentSession().save(user); 
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	 }

}
