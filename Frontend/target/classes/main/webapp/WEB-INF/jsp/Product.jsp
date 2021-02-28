<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>


<body>
	<div class="container-fluid">
	
	<style>
body {
 background-image: url("Images/admin.jpg");
 background-color: #cccccc;
}
</style>
		<div class="col-md-12 col-sm-8 ">
			<form action="<c:url value='insertProduct'/>" method="post"
				align="center">

  <table class="table table-bordered">
				<tr bgcolor="">
						<td colspan="2"><center>Insert Product</center></td>
					</tr>
					<tr>
						<td>Product Id</td>
						<td><input type="text" name="productId" /></td>
					</tr>
					<tr>
						<td>Product Name</td>
						<td><input type="text" name="productName" /></td>
					</tr>
					<tr>
						<td>Price</td>
						<td><textarea row="5" cols="50" name="price"></textarea></td>
					</tr>
					<tr>
						<td>Stock</td>
						<td><textarea row="5" cols="50" name="stock"></textarea></td>
					</tr>
					<tr>
						<td>Product Description</td>
						<td><textarea row="5" cols="50" name="productDesc"></textarea></td>
					</tr>
					<tr>
						<td>product Image</td>
						<td><input type="file" path="" /></td>
					</tr>
					<tr>
						<td colspan="2" >
							<center>
								<input type="submit" value="Insert" class="btn btn-info">
							</center>
						</td>
					</tr>
				</table>
		</div>
		</form>
		<div class="col-md-12  col-md-8">
  <table class="table table-striped">
  
				<thead>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Stock</th>
					<th>Product Desc</th>
					
					<th colspan='2'>Action</th>
				</thead>
				
				<c:forEach items="${productList}"  var="product">
					
					<tr>
						<td>${product.productId}</td>
						<td>${product.productName}</td>
						<td>${product.price}</td>
						<td>${product.stock}</td>
						<td>${product.productDesc}</td>
											
						<td><a href=<c:url value='deleteProduct/${product.productId}'/>>Delete</a></td>
						
						<td ><a chref=<c:url value='editProduct/${product.productId}'/>>Edit</a></td>
					

					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>
</html>
