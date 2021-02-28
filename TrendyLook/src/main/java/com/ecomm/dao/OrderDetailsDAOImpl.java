package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.OrderDetails;
@Transactional
@Repository("orderdetailsDAO")
public class OrderDetailsDAOImpl implements OrderDetailsDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addOrderDetails(OrderDetails order) {
		try {
			sessionFactory.getCurrentSession().save(order);
			System.out.println("Order details stored");
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	@Override
	public boolean deleteOrderDetails(OrderDetails order) {
		try {
			sessionFactory.getCurrentSession().delete(order);
			System.out.println("Order cancelled");
			return true;

		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updateOrderDetails(OrderDetails order) {
		try {
			sessionFactory.getCurrentSession().update(order);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public OrderDetails getOrderDetails(int orderId) {
		Session session = sessionFactory.openSession();
		OrderDetails order = (OrderDetails) session.load(OrderDetails.class, orderId);
		session.close();
		return order;
	}
	
	@Override
	public List<OrderDetails> retrieveOrders(){
		Session session=sessionFactory.openSession();
		List<OrderDetails> orderList=session.createQuery("from OrderDetails").list();
		session.close();
		return orderList;
	}

}
