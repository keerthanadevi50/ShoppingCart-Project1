<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	
<style>
body {
    background-color: steelblue;
}

</style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">Payment</div>
                <div class="panel-body">

<form action="billingAddress" class="form-horizontal"  method="post"   name="form" name="register" >

<div class="form-group">
<label for="firstname">FIRST NAME</label>
<input name="firstname" id="firstname" type="text" class="form-control" placeholder="firstname">
</div>

<div class="form-group">
<label for="lastname">LAST NAME</label>
<input name="lastname" id="lastname" type="text" class="form-control" placeholder="lastname">
</div>
<div class="form-group">
<label for="email">EMAIL</label>
<input name="email" id="email" type="email" class="form-control" placeholder="email">
</div>
<div class="form-group">
<label for="phonenumber">PHONE NUMBER</label>
<input name="phonenumber" id="phonenumber" type="text" class="form-control" placeholder="phonenumber">
</div>
<div class="form-group">
<label for="username">USERNAME</label>
<input name="username" id="username" type="text">
</div>
<div class="form-group">
<label for="apartmentNumber">APARTMENT NUMBER</label>
<input name="apartmentNumber" id="apartmentnumber" type="text" class="form-control" placeholder="apartmentNumber">
</div>
<div class="form-group">
<label for="streetName">STREET NAME</label>
<input name="streetName" id="streetname" type="text" class="form-control" placeholder="streetName">
</div>
<div class="form-group">
<label for="city">CITY</label>
<input name="city" id="city" type="text" class="form-control" placeholder="city">
</div>
<div class="form-group">
<label for="state">STATE</label>
<input name="state" id="state" type="text" class="form-control" placeholder="state">
</div>
<div class="form-group">
<label for="country">COUNTRY</label>
<input name="country" id="country" type="text" class="form-control" placeholder="country">
</div>
<div class="form-group">
<label for="zipcode">ZIPCODE</label>
<input name="zipcode" id="zipcode" type="text" class="form-control" placeholder="zipcode">
</div>
<input type="submit" value="register">
                      
                        
                        <center><input type="submit" class="btn btn-primary m-t-10"  name="_eventId_pay" value="Back"></center>
                          <center><input type="submit" class="btn btn-primary m-t-10"  name="_eventId_thanku" value="submit"></center>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>  