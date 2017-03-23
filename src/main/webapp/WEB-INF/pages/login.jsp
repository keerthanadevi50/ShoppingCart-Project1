<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<c:if test="${not empty error}">
			<center><h1><div style="color : red" class="error">${error}</div></h1></center>
			
		</c:if>
		
		<c:if test="${not empty logout}">
			<center><h3><div style="color : green" class="msg">${logout}</div></h3></center>
</c:if> 
	<h3>You Must Fill Your Details</h3>
	<br>
	
	<form action="loginpage" method="post"  align="center">
    <div class="input-group">
     <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      
      <input type="text" class="form-control" id="username" name="username"  placeholder="username">
    </div>
    <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      
      <input type="password" class="form-control" id="password" name="password"  placeholder="password">
    </div>
    <br>
    <div align="center">
    <input type="submit" class="btn btn-danger" value="submit">
    </div>
  </form>
 </div>
	<%@ include file="footer.jsp" %>
</body>
</html>