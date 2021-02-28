package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.OrderDetails;

public interface OrderDetailsDAO {
	
	public boolean addOrderDetails(OrderDetails order);
	public boolean deleteOrderDetails(OrderDetails order);
	public boolean updateOrderDetails(OrderDetails order);
	public OrderDetails getOrderDetails(int orderId);
	public List<OrderDetails> retrieveOrders();
	

}
