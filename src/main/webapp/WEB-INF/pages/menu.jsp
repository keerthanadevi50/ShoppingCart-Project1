<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.blink {
    animation-duration: 1200ms;
    animation-name: blink;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    -webkit-animation:blink 1200ms infinite; /* Safari and Chrome */
}
@keyframes blink {
    from {
        color:white;
    }
    to {
        color:pink;
    }
}
@-webkit-keyframes blink {
    from {
        color:blue;
    }
    to {
        color:yellow;
    }
}
</style>

		
</head>
<body>
<div class="menu">

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li class="active"><a class="blink" href="#">Book Station</a></li> 	
			</ul>
			
			<c:choose>
			
			<c:when test="${not empty isLoginClicked }">			
			<ul class="nav navbar-nav navbar-right">
						<li><a href="registerCustomer"><span
						class="glyphicon glyphicon-user"></span>Sign Up</a></li>						
			</ul> 
			</c:when>
			
			<c:when test="${not empty isSignUpClicked }">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value="login" />"><span
						class="glyphicon glyphicon-log-in"></span>Login</a></li>	
			</ul> 
			
			
			</c:when>
		
			<c:when test="${not empty isLoggedInAdmin || not empty isLoggedInUser }">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="../j_spring_security_logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>	</ul>
				
			<c:if test="${not empty isLoggedInUser }">
				<ul class="nav navbar-nav navbar-right"> 
			
				<li><a href="myCart/${username}"><span class="glyphicon glyphicon-shopping-cart "></span>MyCart(${numberOfProduct})</a></li>	</ul>
			</c:if>
			
			
			</c:when>
			
			<c:otherwise>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="registerCustomer"><span
				class="glyphicon glyphicon-user"></span>Sign Up</a></li>
	
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span>Login</a></li>
			</ul> 
			</c:otherwise>
			</c:choose>
			
		</div>
	</nav>
</div>
</body>
</html>