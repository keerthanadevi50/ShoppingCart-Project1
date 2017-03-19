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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script  src="<c:url value="/resources/js/CartController.js"/>"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<style>
div.stars {
  width: 270px;
  display: inline-block;
}

input.star { display: none; }

label.star {
  float: right;
  padding: 10px;
  font-size: 36px;
  color: #444;
  transition: all .2s;
}

input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}

input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}

input.star-1:checked ~ label.star:before { color: #F62; }

label.star:hover { transform: rotate(-15deg) scale(1.3); }

label.star:before {
  content: '\f006';
  font-family: FontAwesome;
}
</style>
</head>
<body ng-app="addToCartApp" ng-controller="addToCartCtrl">
<h2 align="center" style="margin-top: 0em; margin-bottom: -2em;">${product.name}</h2>
<div class="container" style="margin: 0px 10px 0px 300px">
<br>
<img src="<c:url value="/resources/productimages/ProductId${product.pid}"/>" alt="${product.pid}" align="left" width="200" height="300">
<form>

<br>
 <table>
 <tr><td>out of stock	:<span class="label label-default">zero stock left</span></td></tr>
<tr><td>Product Name	:<span class="label label-default">${product.name} </span></td></tr>
<tr><td>Product Description	:<span class="label label-default">${product.description}</span></td></tr>
<tr><td>Product Price	:<span class="label label-default">${product.price}</span></td></tr>
<tr><td class="success" "color:blue;">Product Available	:${product.stock}</td></tr>
<tr><td>Author	:<span class="label label-default">${product.author}</span></td></tr>
<tr><td>Published Year	:<span class="label label-default">${product.published}</span></td></tr>
<tr><td>Publisher	:<span class="label label-default">${product.mfg}</span></td></tr>
<tr><td><button class ="add-to-cart btn btn-default" type="button" ng-click="addtocart('${product.pid}')">add to cart</button>
<button class="btn-btn-primary" onclick="goBack()">Go Back</button></td></tr>
</table>
<div class="stars">

    <input class="star star-5" id="star-5" type="radio" name="star"/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" id="star-4" type="radio" name="star"/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" id="star-3" type="radio" name="star"/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" id="star-2" type="radio" name="star"/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" id="star-1" type="radio" name="star"/>
    <label class="star star-1" for="star-1"></label>
    </div>
  </form>
</div>


</body>
</html>