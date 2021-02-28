<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action ="InsertUserDetail" method="post" align="center">
<table align="center">
<tr bgcolor="blue">
<td colspan="2"><center>Register Dialog</center></td>
</tr>
<tr bgcolor="blue">
<td>User Name</td>
<td><input type="text" name="username"/></td>
</tr>
<tr bgcolor="blue">
<td>Password</td>
<td><input type="password" name="password"/></td>
</tr>
<tr bgcolor="blue">
<td>Customer Name</td>
<td><input type="text" name="customerName"/></td>
</tr>
<tr bgcolor="blue">
<td>Enabled</td>
<td><input type="text" name="enabled"/></td>
</tr>
<tr bgcolor="blue">
<td>Email Id</td>
<td><input type="text" name="emailId"/></td>
</tr>
<tr bgcolor="blue">
<td>Address</td>
<td><input type="text" name="address"/></td>
</tr>
<tr bgcolor="blue">
<td>Mobile No</td>
<td><input type="text" name="mobileNo"/></td>
</tr>
<tr bgcolor="blue">
<td>Role</td>
<td><input type="text" name="role"/></td>
</tr>
<tr>
<td colspan="2">
<center>
<input type ="submit" value="SUBMIT"/>
</center>
</td>
</tr>
</table>
</form>


</body>
</html>