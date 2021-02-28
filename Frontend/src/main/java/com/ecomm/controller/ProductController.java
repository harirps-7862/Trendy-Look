package com.ecomm.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/showProduct")
    public String showProduct(Model m)
    {
    	 List<Product> productList=productDAO.retrieveProducts();
    	m.addAttribute("productList", productList);
    	return "Product";
    }
    
     @RequestMapping("/insertProduct")
     
     public String insertProduct(@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("price")int price,@RequestParam("stock")int stock,@RequestParam("productDesc")String productDesc,Model m)
     {
    	 
    	 Product product=new Product();
    	 product.setProductId(productId);
    	 product.setProductName(productName);
    	 product.setPrice(price);
    	 product.setStock(stock);
    	 product.setProductDesc(productDesc);
    	 productDAO.addProduct(product);
    	 
    	 List<Product> productList=productDAO.retrieveProducts();
    	 m.addAttribute("productList", productList);
    	 String imagepath="E:\\Training\\Maven\\Frontend\\src\\main\\webapp\\Images";
    	 imagepath=imagepath+String.valueOf(product.getProductId()+".jpg");

    	 
    	 return "Product";
     }
     

     @RequestMapping(value="/editProduct/{productId}")
  	public String editCategory(@PathVariable("productId")int productId,Model m)
  	{
  		Product productObj=productDAO.getProduct(productId);
  		m.addAttribute("product", productObj);
  		m.addAttribute("pageinfo","Manage Product");
  		return "ProductUpdate";
  	}

      @RequestMapping(value="/updateProduct",method=RequestMethod.POST)
  	public String updateProduct(@RequestParam("productId")int productId, @RequestParam("productName")String productName,@RequestParam("stock")int stock,@RequestParam("price")int price,@RequestParam("productDesc")String productDesc,Model m)
  	{
  		Product productObj=productDAO.getProduct(productId);
  		
  		productObj.setProductName(productName);
  		productObj.setPrice(price);
  		productObj.setStock(stock);
  		productObj.setProductDesc(productDesc);
  		
  		productDAO.updateProduct(productObj);
  		
  		
   	 List<Product> productList=productDAO.retrieveProducts();
  		m.addAttribute("productList", productList);
  		System.out.println("Product table updated");
  		return "Product";
  	
     	
        	}
     @RequestMapping("/deleteProduct/{productId}")
  	public String deleteProduct(@PathVariable("productId") int productId, Model m) {

     	 System.out.println("I am in delete page");
       Product product=productDAO.getProduct(productId);
       
       productDAO.deteteProduct(product);
       List<Product> productList=productDAO.retrieveProducts();
       m.addAttribute("productList", productList);
       
       return "Product";
     }
     
  
     
     @RequestMapping("/Productdisplay/{productId}")
     public String Productdisplay(@PathVariable("productId")int productId, Model m)
     {
    		m.addAttribute("pageinfo","Product Info");
    		Product product=productDAO.getProduct(productId);
    		
       		m.addAttribute("product","Product");
     return "Productdisplay";

     }

}
