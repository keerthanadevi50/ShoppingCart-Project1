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
	

  
	</head>
<body>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav ">
		<div class="container">
		<a href="" class="btn btn-info" role="button">Home</a>
			<a href="" class="btn btn-info" role="button">AboutUs</a>
			<c:if test= "${not empty loginUser }">
			<a href=""  class="btn btn-info" role="button">Track Orders </a>
			<a href="productform"  class="btn btn-info" role="button">Browse All Books</a>
			<a href=""  class="btn btn-info" role="button">Cart</a>
			<a href="newshippingAddress" class="btn btn-info" role="button">ShippingAddress</a>
			<a href="newbillingAddress"  class="btn btn-info" role="button">BillingAddress</a>
			</c:if>
			
			
  <a href="asdfg" class="btn btn-info" role="button">Login</a>
  <a href="registerCustomer" class="btn btn-info" role="button">Register</a>
  <a href="j_spring_security_logout" class="btn btn-info" role="button">Logout</a>
			</div>
			</ul>
		
	</div>
	</nav>

</body>
</html>