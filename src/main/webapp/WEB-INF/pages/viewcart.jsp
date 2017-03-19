<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script  src="<c:url value="/resources/js/CartController.js"/>"></script>
</head>
<body ng-app="addToCartApp" ng-controller="addToCartCtrl" ng-init="retrieveCart()">


<div class="container">
<table class="table">
  <tr>
    <th>ProductName </th>
    <th>Quantity</th>
    <th>Price</th>
    <th>Days</th>
    <th>Status</th>
    <th>Total</th>
</tr>

<tr  ng-repeat = "items in cart">
<td class="span1"><img src="<c:url value="/resources/productimages/{{items.productId}}.jpg" /> " alt="{{items.productId}}"/></td> 
 <td>{{items.productName}}</td>
    <td>{{items.quantity}}</td>
    <td>{{items.price}}</td>
    <td>{{items.days}}</td>
    <td>{{items.status}}</td>
    <td>{{items.total}}</td>
    <td><a href="#" class="btn btn-danger btnAction" ng-click="removeItemFromCart(Items.cartId)">
							<span class="glyphicon glyphicon-trash"></span>remove</a></td>
    </tr>
    
    </table>
    </div>
    </body>
    </html>