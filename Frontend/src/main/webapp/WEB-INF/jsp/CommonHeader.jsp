<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- --- -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>


  
    <a class="navbar-brand" href="Home">TrendyLook</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Home">Home</a></li>
        <li class="dropdown">
    <c:if test="${sessionScope.role==null}">
       <li><a href="aboutUs">AboutUs</a></li>
        <li><a href="contactus">ContactUs</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      </ul>
    </div>
  </div>
    </c:if>
    
     
            <c:if test="${sessionScope.role!=null}">
            <c:if test="${sessionScope.role=='ROLE_ADMIN'}">
            <li class="nav-item">
      <a class="nav-link" href="showCategory">Manage Category</a>
    </li> 
     <li class="nav-item">
      <a class="nav-link" href="showSupplier">Manage Supplier</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="showProduct">Manage Product</a>
    </li>
 
           </c:if>
           <c:if test="${sessionScope.role=='ROLE_USER'}">
           
     
     </c:if>
           </c:if>
    </ul>
    
     
     <ul class="nav navbar-nav navbar-right">
         
                <c:if test="${sessionScope.role!=null}">
             <li><a href="login"><span class="glyphicon glyphicon-user"></span>Sign Out</a></li>
       
       </c:if>
    </ul>
     </nav>
</nav>
    </body>
     

  