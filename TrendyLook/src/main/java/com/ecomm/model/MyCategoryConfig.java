package com.ecomm.model;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MyCategoryConfig {

	 @Bean(name="category")
	 public Category getABean()
	 {
		System.out.println("====Bean Method Called "); 
		 Category category=new Category();
		 category.setCategoryId(1);
		 category.setCategoryName("Tv's");
		 category.setCategoryDesc("Smart Tv");
		 return category;
	 }
	
	
	
	
}
