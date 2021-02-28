<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>



<body>
	<div class="container">
	<style>
body {
 background-image: url("Images/admin.jpg");
 background-color: #cccccc;
}
</style>
		<div class="col-md-12 col-sm-8 ">
			<form action="<c:url value='insertSupplier'/>" method="post"
				align="center">

		<table class="table table-sm" align="center">
					<tr bgcolor="">
						<td colspan="2"><center>Insert Supplier</center></td>
					</tr>
					<tr>
						<td>Supplier Id</td>
						<td><input type="text" name="supplierId" /></td>
					</tr>
					<tr>
						<td>Supplier Name</td>
						<td><input type="text" name="supplierName" /></td>
					</tr>
					<tr>
						<td>Supplier Address</td>
						<td><textarea row="5" cols="50" name="supplierAddr"></textarea></td>
					</tr>
					<tr>
						<td>Delivery Mode</td>
						<td><textarea row="5" cols="50" name="deliveryMode"></textarea></td>
					</tr>
					<tr>
						<td>Delivery Status</td>
						<td><textarea row="5" cols="50" name="deliveryStatus"></textarea></td>
					</tr>
					<tr>
						<td colspan="2" bgcolor="#E5E4E2">
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
				<thead bgcolor="">
					<th>Supplier Id</th>
					<th>Supplier Name</th>
 				    <th>Supplier Addr</th>
 					<th>Delivery Mode</th>
 					<th>Delivery Status</th>
 					
					<th colspan='2'>Action</th>
				</thead>

				
				<c:forEach items="${supplierList}" var="supplier">
					<tr>
						<td>${supplier.supplierId}</td>
						<td>${supplier.supplierName}</td>
						<td>${supplier.supplierAddr}</td>
						<td>${supplier.deliveryMode}</td>
						
						<td>${supplier.deliveryStatus}</td>
						
						<td><a
							href=<c:url value='deleteSupplier/${supplier.supplierId}'/>>Delete</a></td>
						<td><a
							href=<c:url value='editSupplier/${supplier.supplierId}'/>>Edit</a></td>
						

					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>

    