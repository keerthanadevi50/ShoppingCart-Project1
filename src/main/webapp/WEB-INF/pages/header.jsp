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
	width:100%
}
div.container.sample
{
    font-family: Raleway;
	padding: 2em 2em;
	text-align:right;
	width:100%
}

div.container a
{
    color:white;
text-decoration:none;
    font: 18px Raleway;
    margin: 0px 0px;
    padding: 5px 5px;
    position: relative;
    z-index: 0;
    cursor: pointer;
}
.right {
text-align: right;
}

.yellow 
{
position: absolute;
    length:50px;
    width: 100%;
    height: 50px;
   /* background-color: yellow;*/
    background-image: url(https://media.giphy.com/media/YkFvLMt8rnTAQ/giphy.gif);
    background-color:#CCCCCC;
    
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
    
	padding: 2em 2em;
background-image: url(https://media.giphy.com/media/YkFvLMt8rnTAQ/giphy.gif);
	text-align: center;
	text-decoration:blink;
    font-size: 38px;
    font-weight: lighter;
    margin-bottom: 1px;    
}
.blink {
    animation-duration: 1200ms;
    animation-name: blink;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    -webkit-animation:blink 12000ms infinite; /* Safari and Chrome */
}
@keyframes blink {
    from {
        color:pink;
    }
    to {
        color:#ffad60;
    }
}
input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 40%;
}
  </style>
</head>
	
<body>


		<div class="container yellow topBotomBordersOut">
		<c:if test="${pageContext.request.userPrincipal.name != null }">
<a href="home">Welcome ${pageContext.request.userPrincipal.name}</a>
</c:if>
		<a href="home">Home</a>
			<a href="aboutUs">AboutUs</a>
			<input type="text" name="search" placeholder="Search..">
			<a href="fridaylist">Browse All Books</a>
			
			<!-- input type="text" name="search" placeholder="Search.." -->
			<c:if test="${pageContext.request.userPrincipal.name == 'admin' }">
			<a href="afterlogin">Admin Panel</a>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name != 'admin' && pageContext.request.userPrincipal.name != null}">
			<a href="viewcart">My Cart</a>

			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name == null }">
				<h6 style="margin-top: -37px;margin-left: 1100px;"><a href="registerCustomer">Register</a>
				<a href="asdfg">Login</a></h6>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name != null }">
				<h6 style="margin-top: -37px;margin-left: 1100px;"><a href="j_spring_security_logout">Logout</a></h6>
</c:if>
			</div>
			
  

			
			
			
<p>
             <a class="blink" >Welcome to the World's Biggest Online Book Station!</a> 
            </p>
 
</body>
</html>