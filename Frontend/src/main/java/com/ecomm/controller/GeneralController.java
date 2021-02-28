package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController {

	 @RequestMapping("/login")
		public String showLoginPage()
		{
			System.out.println("== I am in My Controller - Login Page");
			return "Login";
		}
	
	 @RequestMapping("/Home")
	 public String showHomePage() {
		 System.out.println("Welcome to TrendyLook");
		 return "Home";
	 }
	 
	 @RequestMapping("/contactus")
	 public String showContactPage() {
		 System.out.println("I am in AboutUs page!!!");
		 return "ContactUs";
	 }
	 
	 @RequestMapping("/aboutUs")
	 public String showAboutPage() {
		 return "AboutUs";
	 }
	 
	 @RequestMapping("/MensWear")
	 public String showMensPage()
	 {
		 return "MensWear";
	 }

	 @RequestMapping("/WomensWear")
	 public String showWomensPage()
	 {
		 return "WomensWear";
	 }
	 @RequestMapping("/KidsWear")
	 public String showKidsPage()
	 {
		 return "KidsWear";
	 }
	 
	 	 
	 /*@RequestMapping("/Productdisplay")
	 public String showproductspage()
	 {
		 return "Productdisplay";
	 }*/
}
