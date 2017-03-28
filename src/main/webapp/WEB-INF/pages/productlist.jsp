<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
   <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
  
<style>

.menu {
    width: 30%;
    float: left;
    padding: 18px;
   
}


h3 { 
    display: block;
    font-size: 1.17em;
    margin-top: 1em;
    margin-bottom: 1em;
    margin-left: 1em;
    margin-right: 1em;
    font-weight: bold;
}
.list-group-image
{
    margin-right: 10px;
}
img{
width: 95%;
}
</style>
</head>
<body>
<div class="w3-container w3-teal">
	<h2>List of Products</h2>
	</div>

	<div class ="row list-group">
	
	<c:forEach items="${productList}" var="product">	

<div class="menu">
<div class="w3-container">
<h3>
	${product.name}
	</h3>
	</div>

<div class="w3-card-2" align="center">	

<a href="<spring:url value="productdetails?id=${product.pid}"/>">
    <img class="group list-group-image" src="<c:url value="resources/productimages/ProductId${product.pid}"/>" alt="${product.pid}" width="300" height="300">
  </a>
 <div class="w3-container" align="left"><a href="<spring:url value="productdetails?id=${product.pid}"/>">
          <span class="glyphicon glyphicon-shopping-cart" style="font-size:25px;color:Black"></span>Buy Now</a></div>
<div class="w3-container" align="right"><i class="fa fa-inr" style="font-size:24px"></i>${product.price }</div>
 </div>         
</div>
 
	</c:forEach>
	</div>


</body>
</html>