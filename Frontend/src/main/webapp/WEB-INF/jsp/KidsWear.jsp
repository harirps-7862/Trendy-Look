<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-fluid">

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<div class="row">

<body>

<style>
body {
background-image: url("Images/bg.jpg");background-color: #ffffcc;
</style>
 
<form action="<c:url value="/addToCart/${product.productId}"/>">
</form>
<br><br>
<table class="table-bordered">
  <tr>
  <td rowspan="6">
   <div class="col-sm-3 col-sm-3 col-sm-3 col-sm-3">
  
         <img src="<c:url value="Images/Products/k2.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em>Product Id:8</em></b>  </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em> Product Name:Kids jeans</em></b></td>
<td> ${product.productName}</td>
</tr>

<tr>
<td><b><em>Price:899</em></b></td>
<td> ${product.price}</td>
</tr>

<tr>
<td><b><em>Stock:16</em></b></td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b><em>ProductDesc:Jeans for 5-8 yrs.</em></b></td>
<td> ${product.productDesc}</td>
</tr>
<tr>

<td> Quantiy
<select name="quantity">
  <option value="1"> 1 </option>
  <option value="2"> 2</option>
  <option value="3"> 3</option>
  <option value="4"> 4</option>
  <option value="5"> 5</option>
</select>
</td>
<td> <input type="submit" value="Buy" class="btn btn-success">
</td></tr>
</table>
</br></br></br>

<table class="table-bordered">
  <tr>
  <td rowspan="6">
         <img src="<c:url value="Images/Products/k3.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em>Product Id:9</b></</td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em>Product Name:Boy's Tshirt</em></b></td>
<td> ${product.productName}</td>
</tr>

<tr>
<td><b><em>Price:599</em></b></td>
<td> ${product.price}</td>
</tr>

<tr>
<td><b><em>Stock:25</em></b></td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b><em>ProductDesc:T-Shirt for 4-8 yrs.</em></b></td>
<td> ${product.productDesc}</td>
</tr>
<tr>

<td> Quantiy
<select name="quantity">
  <option value="1"> 1 </option>
  <option value="2"> 2</option>
  <option value="3"> 3</option>
  <option value="4"> 4</option>
  <option value="5"> 5</option>
</select>
</td>
<td> <input type="submit" value="Buy" class="btn btn-success">
</td></tr>
</table>

<table class="table-bordered">
  <tr>
  <td rowspan="6">
         <img src="<c:url value="Images/Products/k5.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em>Product Id:10</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em>Product Name:Girl's Frock</em></b></td>
<td> ${product.productName}</td>
</tr>

<tr>
<td><b><em>Price:599</em></b></td>
<td> ${product.price}</td>
</tr>

<tr>
<td><b><em>Stock:56</em></b></td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b><em>ProductDesc:Frocks for 5-7 yrs.</em></b></td>
<td> ${product.productDesc}</td>
</tr>
<tr>

<td> Quantiy
<select name="quantity">
  <option value="1"> 1 </option>
  <option value="2"> 2</option>
  <option value="3"> 3</option>
  <option value="4"> 4</option>
  <option value="5"> 5</option>
</select>
</td>
<td> <input type="submit" value="Buy" class="btn btn-success">
</td></tr>
</table>
<table class="table-bordered">
  <tr>
  <td rowspan="6">
         <img src="<c:url value="Images/Products/k4.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em>Product Id:11</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em>Product Name:Kids Dress</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em>Price:1299</em></b></td>
<td> ${product.price}</td>
</tr>

<tr>
<td><b><em>Stock:78</em></b></td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b><em>ProductDesc:Dress for 4-7 yrs.</em></b></td>
<td> ${product.productDesc}</td>
</tr>
<tr>

<td> Quantiy
<select name="quantity">
  <option value="1"> 1 </option>
  <option value="2"> 2</option>
  <option value="3"> 3</option>
  <option value="4"> 4</option>
  <option value="5"> 5</option>
</select>
</td>
<td> <input type="submit" value="Buy" class="btn btn-success">
</td></tr>
</table>


</body>
</div>