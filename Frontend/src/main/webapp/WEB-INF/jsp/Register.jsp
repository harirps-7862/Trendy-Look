
	<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
	<div class="container">
	<style>
body {
 background-image: url("Images/homepage1.jpg");
 background-color: #cccccc;
}
</style>
        <div class="row justify-content-center">
            <div class="col-md-9">
                    <div class="card">
                        <div class="card-header" align="center"><b>Register Here..!!</b></div>
                        <div class="card-body">
                            <form action="registeruser" method="post">
                           
                                </div>
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">User Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="username" class="form-control" name="username" required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="password" id="password" class="form-control" name="password">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Customer Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="customerName" class="form-control" name="customerName">
                                    </div>
                                </div>
                          
                                <div class="form-group row">
                                    <label for="mb_no" class="col-md-4 col-form-label text-md-right">Mobile Number</label>
                                    <div class="col-md-6">
                                        <input type="text" id="mobileNo" class="form-control" name="mobileNo">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="mb_no" class="col-md-4 col-form-label text-md-right">Role</label>
                                    <div class="col-md-6">
                                        <input type="text" id="role" class="form-control" name="role">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="mb_no" class="col-md-4 col-form-label text-md-right">Email Id</label>
                                    <div class="col-md-6">
                                        <input type="text" id="emailId" class="form-control" name="emailId">
                                    </div>
                                    
                                    </div>
                                <div class="form-group row">
                                    <label for="mb_no" class="col-md-4 col-form-label text-md-right">UserType</label>
                                    <div class="col-md-6">
                                        <input type="text" id="usertype" class="form-control" name="usertype">
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label for="mb_no" class="col-md-4 col-form-label text-md-right">Address </label>
                                    <div class="col-md-6">
                                        <input type="text" id="address" class="form-control" name="address">
                                    </div>
                                </div>
                                <div class="form-group row">
                                
                                </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit"  value="SUBMIT" class="btn btn-primary">
                                        Register
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</body>
</html>
