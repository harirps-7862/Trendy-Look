<%@page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update here</title>
</head>
<body>

<form action="<c:url value="${PageContext}/updateSupplier"/>" method="post">
<table align="center">
	<tr bgcolor="pink">
		<td align="center" colspan="2"><h3>Supplier Detail</h3></td>
	</tr>
	<tr bgcolor="cyan">
		<td>Supplier Id</td>
		<td><input type="text" name="supplierId" value="${supplier.supplierId}" readonly/></td>
	</tr>
	<tr bgcolor="cyan">
		<td>Supplier Name</td>
		<td><input type="text" name="supplierName" value="${supplier.supplierName}"/></td>
	</tr>
	<tr bgcolor="cyan">
		<td>Supplier Addr</td>
		<td><textarea rows="5" cols="30" name="supplierAddr">${supplier.supplierAddr}</textarea></td>
	</tr>
	tr bgcolor="cyan">
		<td>DeliveryMode</td>
		<td><textarea rows="5" cols="30" name="deliveryMode">${supplier.deliveryMode}</textarea></td>
	</tr>
	tr bgcolor="cyan">
		<td>Delivery Status</td>
		<td><textarea rows="5" cols="30" name="deliveryStatus">${supplier.deliveryStatus}</textarea></td>
	</tr>
	<tr bgcolor="pink">
		<td colspan="2" align="center">
			<input type="submit" value="Update Supplier"/>
		</td>
	</tr>
</table>
</form>

</body>
</html>
