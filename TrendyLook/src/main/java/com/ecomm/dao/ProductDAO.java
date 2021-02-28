package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.Product;

public interface ProductDAO {
	
	public boolean addProduct(Product product);
	public boolean deteteProduct(Product product);
	public boolean updateProduct(Product product);
	public Product getProduct(int productId);
	public List<Product> retrieveProducts();

}
