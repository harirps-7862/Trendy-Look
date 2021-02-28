<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="CommonHeader.jsp" %>
<style>
body {
 background-image: url("Images/homepage1.jpg");
 background-color: #cccccc;
}
</style>
<body>
<div class="container">
<div style="background-colour:#2DE9D0;font-family:Monotype Corsiva">
<p><b> Welcome : ${sessionScope.username}</b></p>




<br/><br/><br/><br/><br/>
  <div class="row" >
      <div class="col-sm-4 text-center"width="50" height="50">
  
      <h3 class="text-warning"><a href="MensWear"><em><b>Men's Wear</b></em></h3>
       <style>
      img {
  width: 100%;
  height: 55%;
}
      </style>
       <a href="MensWear">
      <img src="Images/Products/three.jpg" width="50" height="50">
    </div>
    
    <div class="col-sm-4 text-center" width="50" height="50">
      <h3 class="text-warning"><a href="WomensWear"><em><b>Women's Wear</b></em></h3>
      <style>
      img {
  width: 100%;
  height: 55%;
}
      </style>
                <a href="WomensWear">
               
      <img src="Images/Products/w1.jpg" width="50" height="50">
    </div>
    <div class="col-sm-4 text-center" width="50" height="50">
    
      <h3 class="text-primary"><a href="KidsWear"><em><b>Kid's Wear</b></em></h3>    
       <style>
      img {
  width: 100%;
  height: 55%;
}
      </style>
             <a href="KidsWear">
      
      <img src="Images/Products/k1.jpg" width="50" height="50">    
      
    </div>
 </div></div>
			
	
</div>