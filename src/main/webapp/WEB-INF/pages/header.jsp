<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Raleway">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>

div.container
{
    font-family: Raleway;
	padding: 2em 2em;
	text-align:left;
}

div.container a
{
    color:black;
text-decoration:none;
    font: 16px Raleway;
    margin: 0px 0px;
    padding: 5px 5px;
    position: relative;
    z-index: 0;
    cursor: pointer;
}

.yellow
{
position: absolute;
    length:50px;
    width: 100%;
    height: 50px;
    background: #fdd835;
    
}
div.topBotomBordersOut a:before, div.topBotomBordersOut a:after
{
    position: absolute;
    left: 0px;
    width: 100%;
    height: 2px;
    background: #FFF;
    content: "";
    opacity: 0;
    transition: all 0.3s;
}

div.topBotomBordersOut a:before
{
    top: 0px;
    transform: translateY(10px);
}

div.topBotomBordersOut a:after
{
    bottom: 0px;
    transform: translateY(-10px);
}

div.topBotomBordersOut a:hover:before, div.topBotomBordersOut a:hover:after
{
    opacity: 1;
    transform: translateY(0px);
}
p
{
font-family: Raleway;
    
	padding: 3em 2em;
	text-align: center;
	text-decoration:blink;
    background: #555;
    color: #AAA;
    font-size: 35px;
    font-weight: lighter;
    margin-bottom: 1px;    
}
.blink {
    animation-duration: 3200ms;
    animation-name: blink;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    -webkit-animation:blink 12000ms infinite; /* Safari and Chrome */
}
@keyframes blink {
    from {
        color:gray;
    }
    to {
        color:white;
    }
}


  </style>
</head>
	
<body>
<c:if test="${pageContext.request.userPrincipal.name != null }">
Welcome ${pageContext.request.userPrincipal.name}
</c:if>
		<div class="container yellow topBotomBordersOut">
		<a href="home">Home</a>
			<a href="aboutUs">AboutUs</a>
			<a href="fridaylist">Browse All Books</a>
			<c:if test= "${not empty loginUser }">
			<a href="viewcart">My Cart</a>
			<a href="newshippingAddress">ShippingAddress</a>
			<a href="newbillingAddress">BillingAddress</a>
		
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name == null }">
				<a href="registerCustomer">Register</a>
				<a href="asdfg">Login</a>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name != null }">
				<a href="j_spring_security_logout">Logout</a>
</c:if>
			
			
			
			
 
 
			</div>
<p>
             <a class="blink" >Welcome to the World's Biggest Online Book Station!</a> 
            </p>
 
</body>
</html>