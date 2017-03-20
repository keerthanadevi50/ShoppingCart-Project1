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
img{
width: 60%;
}
</style>
</head>
<body>
	<h2>List of Products</h2>

	<div class ="row">
	
	<c:forEach items="${productList}" var="product">	
<div class="menu">	
<h3>
	${product.name}
	</h3>
<a href="<spring:url value="productdetails/${product.pid}"/>">
    <img src="<c:url value="resources/productimages/ProductId${product.pid}"/>" alt="${product.pid}" width="300" height="300">
  </a>
  <table>
  <tr>
  <td>
<div id="container"><span>&#x20B9;</span>${product.price }</div>
</td>
<td>
 <a href="<spring:url value="viewcart/${product.pid}"/>">
          <span class="glyphicon glyphicon-shopping-cart" ></span>buy now</a>
          </td>
          </tr>
</table>
</div>
 
	</c:forEach>
	</div>


	
</body>
</html>