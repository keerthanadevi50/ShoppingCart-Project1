<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
<body>

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
<c:forEach items="${cartList}" var="cart" varStatus="status">
<tr>
 <td >${cart.productName}</td>
    <td>${cart.quantity}</td>
    <td>${cart.price}</td>
    <td>${cart.days}</td>
    <td>${cart.status}</td>
    <td>${cart.total}</td>
    <td><a href="deleteProduct/${cart.cartId}" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
     </c:forEach>
    </table>
    </div>
    </body>
    </html>