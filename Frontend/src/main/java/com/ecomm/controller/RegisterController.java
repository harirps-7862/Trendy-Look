package com.ecomm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

@Controller
public class RegisterController {
	
	@Autowired
	UserDAO userDAO;
	
	 @Autowired
	  private BCryptPasswordEncoder bCrypyptPasswordEncoder;

	
	@RequestMapping("/register")
	public String showRegisterPage(Model m)
	{
		System.out.println("== I am in My Controller - Register Page===");
		m.addAttribute("page name", "Register");
		return "Register";
	}
	@RequestMapping(value="/registeruser")
	public String addUser(@RequestParam("username")String username,@RequestParam("password")String password,@RequestParam("usertype")String usertype ,@RequestParam("customerName")String customerName, @RequestParam("emailId")String emailId,@RequestParam("mobileNo")String mobileNo,@RequestParam("role")String role,@RequestParam("address")String address,Model m)
	{
		
		UserDetail user= new UserDetail();
		user.setUserName(username);
		user.setPassword(password);
		user.setCustomerName(customerName);
		user.setRole(role);
		user.setEnabled(true);
		user.setEmailId(emailId);
		user.setMobileNo(mobileNo);
		user.setUsertype(usertype);
		user.setAddress(address);
		
		
         String encodedPassword=bCrypyptPasswordEncoder.encode(user.getPassword());
         user.setPassword(encodedPassword);
         
         if(userDAO.registerUser(user))
         {
        	 System.out.println("User Registered");
        	 return "Login";
        	 
         }
         else {
        	 
        	 m.addAttribute("error info:","Error while registering");
        	 return "Register";
         }
	}
}
