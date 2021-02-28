<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<div cllass="container-fluid">
<style>
body {
 background-image: url("Images/bg4.jpg");
 background-color: #cccccc;
}
</style>

<div class="row">
<br/>

<div class="col-xs-12 col-sm-8 col-md-8">
</div>
<div class="col-xs-12 col-sm-5 col-md-4">
<br/><br/><br/><br/><br/><br/><br/><br/>
<form action="perform_login" method="post">
<table class="table table-bordered">
<thead>
	<tr  align="center">
                        <div class="card-header" align="center"><b>Login Here..!!</b></div>
	</tr>
	<tr >
		<td ><b><i>Login_Name</i></b></td>
		<td><input type="text" name="username"/></td>
	</tr>
	<tr  >
		<td><b><i>Password</i></b></td>
		<td><input type="password" name="password"/></td>
	</tr>
	<tr >
		<td colspan="2">
			
<center>
<input type ="submit" value="Login" class="btn btn-info"/>
</center>			
		</td>
	</tr>
	
</table>
</form>
</div>
	


</div>
</div>
</body>
</html>