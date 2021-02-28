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
<table class="table-bordered">
  <tr>
  <td rowspan="6">
   <div class="col-sm-3 col-sm-3 col-sm-3 col-sm-3">
  
         <img src="<c:url value="Images/Products/one.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
         <i class="bi bi-heart"></i>
</td>
<tr>
<td><b> Product Id:<em>1</em></b> </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b> Product Name:<em>Denim Shirt</em></b> </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b>Price:<em>1999</em></b></td>
<td> ${product.price}</td>
</tr>

<tr>
<td><b> Stock:<em>152</em></b> </td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b> ProductDesc:<em>Denim shirts.</em></b></td>
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
         <img src="<c:url value="Images/Products/five.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em> Product Id:2</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em>Product Name:T-Shirt</em> </b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em> Price:1599</em> </b></td>
<td> ${product.price}</td>
</tr>

<tr>
<td><b><em>Stock:267</em> </b></td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b><em>ProductDesc:T-shirt for men.</em></b></td>
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
         <img src="<c:url value="Images/Products/four.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em> Product Id:3</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em> Product Name:LP-Shirt</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em>Price:3999</em></b> </td>
<td> ${product.price}</td>
</tr>

<tr>
<td> <b>Stock:752</b> </td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b> ProductDesc:Formal shirt.</b></td>
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
         <img src="<c:url value="Images/Products/three.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em>Product Id:4</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em> Product Name:U.S Polo</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em> Price:1599</b></em> </td>
<td> ${product.price}</td>
</tr>

<tr>
<td><b><em> Stock:212</b></em></td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b><em>ProductDesc:Tshirt</em></b></td>
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