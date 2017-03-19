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
	<h2>ENTER USERNAME AND PASSWORD</h2>
	<br>
	
	<form action="loginpage" method="post">
    <div class="form-group">
      <label for="username">Enter Your User Name</label>
      <input type="text" class="form-control" id="username" name="username"  placeholder="username">
    </div>
    <div class="form-group">
      <label for="password">Enter Your Password:</label>
      <input type="password" class="form-control" id="password" name="password"  placeholder="password">
    </div>
    <input type="submit" class="btn btn-default" value="submit">
  </form>
 </div>
	
</body>
</html>