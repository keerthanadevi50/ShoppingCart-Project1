<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script  src="<c:url value="resources/js/CartController.js"/>"></script>
</head>
<body>
<h2 align="center" style="margin-top: 0em; margin-bottom: -2em;">${product.name}</h2>
<div class="container" style="margin: 0px 10px 0px 300px">
<form>
<table>
<tr>
<td>
<img src="<c:url value="resources/productimages/ProductId${product.pid}"/>" alt="${product.pid}" width="200" height="300">
</td></tr> 
  <tr><td>out of stock <span class="label label-default">zero stock left</span></td></tr>
<tr><td>Product Name<span class="label label-default">: ${product.name} </span></td></tr>
<tr><td>Product Description<span class="label label-default">: ${product.description}</span></td></tr>
<tr><td>Product Price<span class="label label-default">: ${product.price}</span></td></tr>
<tr><td>Product Available <span class="label label-default">: ${product.stock}</span></td></tr>
<tr><td>Author <span class="label label-default">: ${product.author}</span></td></tr>
<tr><td>Published Year <span class="label label-default">: ${product.published}</span></td></tr>
<tr><td>Publisher <span class="label label-default">: ${product.mfg}</span></td></tr>
<button class ="add-to-cart btn btn-default" type="button" ng-click="addtocart('${product.pid}')">add to cart</button>
<button class="btn-btn-primary" onclick="goBack()">Go Back</button></td></tr>
</table>
</form>
</div>

</body>
</html>