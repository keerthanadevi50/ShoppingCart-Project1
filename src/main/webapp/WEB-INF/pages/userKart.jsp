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
<h2>Purchased Details</h2>

<div class="container">
<table class="table">
  <tr>
  <th>cartId</th>
  <th>userId</th>
  <th>userName</th>
   <th>ProductName </th>
  <th>productId</th>
  <th>price</th>
    <th>Quantity</th>    
    <th>Status</th>
    <th>Total</th>
    <!-- <th>Added Date</th> -->
    <th>Days</th>
</tr>
<c:forEach items="${cartList}" var="cart" varStatus="status">
<tr>
<td>${cart.cartId }</td>
<td>${cart.userId }</td>
<td>${cart.userName }</td>
 <td >${cart.productName}</td>
 <td >${cart.productId}</td>    
    <td>${cart.price}</td>
    <td>${cart.quantity}</td>      
    <td>${cart.status}</td>
    <td>${cart.total}</td>
  <%--  <td>${cart.addDate}</td>   --%> 
    <td>${cart.days}</td>
    </tr>
   
     </c:forEach>
      
    </table>
   </div> 
    </body>
    </html>