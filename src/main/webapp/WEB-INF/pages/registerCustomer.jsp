<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<div class="container-wrapper">
<div class="container">
<form action="newUsers" class="form-horizontal"  method="post"   role="form" name="register" class="form-horizontal">
    <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h1>Registration Form</h1>
					</div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="first name">First Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" placeholder="First Name">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="last name">Last Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" placeholder="last Name">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="username">User Name</label>
      <div class="col-sm-10">
        <input type="username" class="form-control" id="username" placeholder="Enter username">
      </div>
    </div>
<div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter email">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="phonenumber">Phone Number</label>
      <div class="col-sm-10">
        <input type="phonenumber" class="form-control" id="phonenumber" placeholder="Enter phonenumber">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="password" placeholder="Enter password">
      </div>
      </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="apartmentnumber">Apartment Number</label>
      <div class="col-sm-10">
        <input type="apartmentnumber" class="form-control" id="apartmentnumber" placeholder="Enter apartmentnumber">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="streetName">Street Name</label>
      <div class="col-sm-10">
        <input type="streetName" class="form-control" id="streetname" placeholder="Enter streetname">
      </div>
    </div>


<div class="form-group">
      <label class="control-label col-sm-2" for="city">City</label>
      <div class="col-sm-10">
        <input type="city" class="form-control" id="city" placeholder="Enter city">
      </div>
    </div>


<div class="form-group">
      <label class="control-label col-sm-2" for="city">State</label>
      <div class="col-sm-10">
        <input type="state" class="form-control" id="state" placeholder="Enter state">
      </div>
    </div>


<div class="form-group">
      <label class="control-label col-sm-2" for="city">Country</label>
      <div class="col-sm-10">
        <input type="country" class="form-control" id="country" placeholder="Enter country">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="city">ZipCode</label>
      <div class="col-sm-10">
        <input type="zipcode" class="form-control" id="zipcode" placeholder="Enter zipcode">
      </div>
    </div>
<input type="submit" value="register">

</form>

</div>

</div>
</body>
</html>
