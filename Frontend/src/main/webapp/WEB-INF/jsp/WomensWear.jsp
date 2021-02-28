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
  
         <img src="<c:url value="Images/Products/wone.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em> Product Id:5</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><em><b> Product Name:T-Shirt</b></em></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><em><b> Price:699</b></em> </td>
<td> ${product.price}</td>
</tr>

<tr>
<td><em><b>Stock:52</b></em> </td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b><em>ProductDesc:Tshirt for Girls.</em></b></td>
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
         <img src="<c:url value="Images/Products/w2.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em> Product Id:6</b></em></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em> Product Name:Lehenga</em></b> </td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><em><b> Price:1999</b></em></td>
<td> ${product.price}</td>
</tr>

<tr>
<td><em><b> Stock:212</b></em> </td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><em><b>ProductDesc:Lehenga for women party wear.</b></em></td>
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
         <img src="<c:url value="Images/Products/w3.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em>Product Id:7</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em> Product Name:Denim jacket</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em> Price:6999</em></b> </td>
<td> ${product.price}</td>
</tr>

<tr>
<td><em><b>Stock:58</b></em></td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b><em>ProductDesc:Denim jacket for ladies.</em></b></td>
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
         <img src="<c:url value="Images/Products/w4.jpg"/> "height="300" alt=" Generic placeholder thumbnail"/>
</td>
<tr>
<td><b><em>Product Id:8</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><b><em>Product Name:Levi's Jeans</em></b></td>
<td> ${product.productId}</td>
</tr>

<tr>
<td><em><b>Price:2500</b></em></td>
<td> ${product.price}</td>
</tr>

<tr>
<td><b><em> Stock:72</em></b> </td>
<td> ${product.stock}</td>
</tr>
<tr>
<td><b><em>ProductDesc:Slim fit jeans for ladies.</em></b></td>
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