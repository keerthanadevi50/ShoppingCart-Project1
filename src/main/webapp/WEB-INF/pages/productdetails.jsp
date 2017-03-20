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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
img{
border:thick;
margin-left: auto;
}
.button
{
color="yellow"
}
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
<h2 align="center" style="margin-top: 1em; margin-bottom: 0.5em;">${product.name}</h2>
<div class="container" style="margin: 0px 30px 0px 80px">
<br>
<img src="<c:url value="/resources/productimages/ProductId${product.pid}"/>" alt="${product.pid}" align="left" width="350" height="350">
<form>

 <table> 
<tr><td class="col-sm-4" style="background-color:lavender;">Product Name	: </td> <td class="col-sm-4" style="background-color:lavenderblush;"> ${product.name} </td></tr>
<tr><td class="col-sm-4">out of stock	: </td> <td  class="col-sm-4">  zero stock left</td></tr>
<tr><td class="col-sm-4" >Product Description	: </td> <td class="col-sm-4"> ${product.description}</td></tr>
<tr><td class="col-sm-4" style="background-color:lavender;">Product Price	: </td> <td class="col-sm-4" style="background-color:lavenderblush;"><span>&#x20B9;</span> ${product.price}</td></tr>
<tr><td class="col-sm-4" >Product Available	: </td> <td class="col-sm-4" >${product.stock}</td></tr>
<tr><td class="col-sm-4" style="background-color:lavender;">Author	: </td> <td class="col-sm-4" style="background-color:lavenderblush;">${product.author}</td></tr>
<tr><td class="col-sm-4">Published Year	: </td> <td  class="col-sm-4" >  ${product.published}</td></tr>
<tr><td class="col-sm-4" style="background-color:lavender;">Publisher	: </td> <td style="background-color:lavenderblush;"> ${product.mfg} </td></tr>

<tr><td class="col-sm-4"></td></tr>
<tr><td ><button  type="button" class="btn btn-info btn-lg"  ng-click="addtocart('${product.pid}')" <span class="glyphicon glyphicon-shopping-cart">Add to Cart </span></button>
		<button type="button" class= "btn btn-warning" onclick="goBack()">Continue Shopping</button></td></tr>
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