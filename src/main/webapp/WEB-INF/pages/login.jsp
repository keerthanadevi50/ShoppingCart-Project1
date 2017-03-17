<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<h2>ENTER USERNAME AND PASSWORD</h2>
	<br>
	
	<form action="login" method="post">
    <div class="form-group">
      <label for="username">Enter Your User Name</label>
      <input type="text" class="form-control" id="username"  placeholder="username">
    </div>
    <div class="form-group">
      <label for="password">Enter Your Password:</label>
      <input type="password" class="form-control" id="password"  placeholder="password">
    </div>
    <button type="submit" class="btn btn-default" value="submit">Submit</button>
  </form>
 </div>
	
</body>
</html>