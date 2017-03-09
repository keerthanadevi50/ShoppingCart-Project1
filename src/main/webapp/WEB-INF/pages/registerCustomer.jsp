<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<form action="newUsers" class="form-horizontal"  method="post"   role="form" name="register" >
    <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h1>Registration Form</h1>
					</div>

<div class="form-group">
<label for="firstname">FIRST NAME</label>
<input name="firstname" id="firstname" type="text">
</div>

<div class="form-group">
<label for="lastname">LAST NAME</label>
<input name="lastname" id="lastname" type="text">
</div>
<div class="form-group">
<label for="email">EMAIL</label>
<input name="email" id="email" type="email">
</div>
<div class="form-group">
<label for="phonenumber">PHONE NUMBER</label>
<input name="phonenumber" id="phonenumber" type="text">
</div>
<div class="form-group">
<label for="username">USERNAME</label>
<input name="username" id="username" type="text">
</div>
<div class="form-group">
<label for="password">PASSWORD</label>
<input name="password" id="password" type="password">
</div>
<div class="form-group">
<label for="apartmentNumber">APARTMENT NUMBER</label>
<input name="apartmentNumber" id="apartmentnumber" type="text">
</div>
<div class="form-group">
<label for="streetName">STREET NAME</label>
<input name="streetName" id="streetname" type="text">
</div>
<div class="form-group">
<label for="city">CITY</label>
<input name="city" id="city" type="text" >
</div>
<div class="form-group">
<label for="state">STATE</label>
<input name="state" id="state" type="text">
</div>
<div class="form-group">
<label for="country">COUNTRY</label>
<input name="country" id="country" type="text">
</div>
<div class="form-group">
<label for="zipcode">ZIPCODE</label>
<input name="zipcode" id="zipcode" type="text">
</div>
<input type="submit" value="register">

</form>

</div>

</div>
</body>
</html>
