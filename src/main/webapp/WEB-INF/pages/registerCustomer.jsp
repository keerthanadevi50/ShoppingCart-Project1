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
<style>
.h1{
color:lime;
}
</style></head>
<body>
<div class="container-wrapper">
<div class="container">
<form action="newUsers" class="form-horizontal"  method="post"   role="form" >
    <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h1>Registration Form</h1>
					</div>
					</div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="first name">First Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" name="firstname" placeholder="First Name">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="last name">Last Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" name="lastname" placeholder="last Name">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="username">User Name</label>
      <div class="col-sm-10">
        <input type="username" class="form-control" id="username" name="username" placeholder="Enter username">
      </div>
    </div>
<div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="phonenumber">Phone Number</label>
      <div class="col-sm-10">
        <input type="phonenumber" class="form-control" id="phonenumber" name="phonenumber" placeholder="Enter phonenumber">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
      </div>
      </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="apartmentNumber">Apartment Number</label>
      <div class="col-sm-10">
        <input type="apartmentnumber" class="form-control" id="apartmentnumber" name="apartmentNumber" placeholder="Enter apartmentnumber">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="streetName">Street Name</label>
      <div class="col-sm-10">
        <input type="streetName" class="form-control" id="streetName" name="streetName" placeholder="Enter streetname">
      </div>
    </div>


<div class="form-group">
      <label class="control-label col-sm-2" for="city">City</label>
      <div class="col-sm-10">
        <input type="city" class="form-control" id="city" name="city" placeholder="Enter city">
      </div>
    </div>


<div class="form-group">
      <label class="control-label col-sm-2" for="State">State</label>
      <div class="col-sm-10">
        <input type="state" class="form-control" id="state"name="State" placeholder="Enter state">
      </div>
    </div>


<div class="form-group">
      <label class="control-label col-sm-2" for="country">Country</label>
      <div class="col-sm-10">
        <input type="country" class="form-control" id="country" name="country" placeholder="Enter country">
      </div>
    </div>

<div class="form-group">
      <label class="control-label col-sm-2" for="zipcode">ZipCode</label>
      <div class="col-sm-10">
        <input type="zipcode" class="form-control" id="zipcode" name="zipcode" placeholder="Enter zipcode">
      </div>
    </div>
    <br>
    <div align="center">
<input type="submit" name="submit" class="btn btn-success"  value="register">
</div>

</form>

</div>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>
