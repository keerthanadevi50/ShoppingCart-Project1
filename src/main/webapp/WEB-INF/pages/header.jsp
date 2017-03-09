<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
	
	</head>
<body>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav ">
			<li><a href="">Home</a></li>
			<li><a href="">About us</a></li>
			<c:if test= "${not empty loginAdmin }">
			<div class="dropdown">
  <button class="dropbtn">Books</button>
  <div class="dropdown-content">
    <a href="productform">add</a>
    <a href="#">view</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">SelectByCategory</button>
  <div class="dropdown-content">
    <a href="categoryform">add</a>
    <a href="#">view</a>
  </div>
</div>
			<li><a href="supplierform">Supplier</a></li>
			</c:if>
			<c:if test= "${not empty loginUser }">
			<li><a>Track Orders </a></li>
			
			<li><a href="productform">Browse All Books</a></li>
		
			<li><a href="">Cart</a></li>
			<li><a href="newshippingAddress">ShippingAddress</a></li>
			<li><a href="newbillingAddress">BillingAddress</a></li>

			</c:if>
			<li><a href="login">Login</a></li>
			
			
			<li><a href="registerCustomer">Register</a></li>
			<li><a href="">logout</a></li>
			
			
			
			
		</ul>
	</div>
	</nav>

</body>
</html>