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
    <td><a href="delete/${cart.cartId}"><span class="glyphicon glyphicon-trash"></span></a></td>
    </tr>
   
     </c:forEach>
      <tr>
    <td colspan="5" align="right">Grand Total :</td><td>${GrandTotal}</td>
    
    
    </tr>
    
     <button type="button" class="btn btn-success">
                            Continue Shopping<span class="glyphicon glyphicon-play"></span>
                        </button>
                      
                         <a href="order/${pageContext.request.userPrincipal.name}"><button type="button" class="btn btn-success">
                            BuyNow <span class="glyphicon glyphicon-briefcase"></span>
                        </button></a>
                      
                         <button type="button" class="btn btn-danger">
                            Cancel <span class="glyphicon glyphicon-remove"></span>
                        </button>
    </table>
    </div>
    </body>
    </html>