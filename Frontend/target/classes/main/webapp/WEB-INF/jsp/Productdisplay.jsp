<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>

<div class="row">
    <c:forEach items="${productList}" var="product">
   
   <div class="row">
 <div class="col-xs-12 col-sm-4 col-md-3">
      <div class="thubnail" width="50" height="50">
   
   <a href=/Home/${product.productId} class="thumbnail">
         <img src="<c:url value="Images/Products/${product.productId}.jpg"/>" alt="Generic placeholder thumbnail"/>
         </a>
         
         <p align="center"> ${product.productName}</p>
         <p align="center"> Price:${product.price}</p>
         <p align="center"> Stock:${product.stock}</p>
         <p align="center">  ProdDesc:${product.productDesc}</p>
         
         
         
         
         
         </div> </c:forEach>
   </div>
  