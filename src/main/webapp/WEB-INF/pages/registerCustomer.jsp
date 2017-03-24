<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/pages/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.h1 {
	color: lime;
}
</style>

<script>
	function formRegister() {
		// Make quick references to our fields
		var firstname = document.getElementById('firstname');
		var username = document.getElementById('user');
		var password = document.getElementById('pass');
		var phone = document.getElementById('ph');
		var email = document.getElementById('email');
		var apartmentnumber = document.getElementById('apartmentnumber');
		var streetName = document.getElementById('streetName');
		var city = document.getElementById('city');
		var state = document.getElementById('state');
		var country = document.getElementById('country');
		var zipcode = document.getElementById('zipcode');

		// Check each input in the order that it appears in the form!
		if (notEmpty(firstname, "Firstname Should not be empty")) {
			if (isAlphabet(firstname, "Please enter only letters for Firstname")) {
				if (notEmpty(username, "Username Should not be empty")) {
					if (isAlphabet(username,
							"Please enter only letters for Username")) {
						if (notEmpty(password, "password Should not be empty")) {
							if (isAlphanumeric(password,
									"Numbers and Letters Only for Passwords")) {
								if (notEmpty(phone,
										"PhoneNumber Should not be empty")) {
									if (isNumeric(phone,
											"Please enter only number for PhoneNumber")) {
										if (notEmpty(email,
												"EmailId Should not be empty")) {
											if (emailValidator(email,
													"Enter a valid Email id")) {

												if (notEmpty(apartmentnumber,
														"Address Should not be empty")) {
													if (notEmpty(streetName,
															"streetname Should not be empty")) {
														if (notEmpty(city,
																"city Should not be empty")) {
															if (notEmpty(state,
																	"state Should not be empty")) {
																if (notEmpty(
																		country,
																		"country Should not be empty")) {

																	if (isNumeric(
																			zipcode,
																			"Please enter a valid zip code")) {
																		return true;
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		return false;
	}

	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
</script>



</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<form action="newUsers" onsubmit="return formRegister()" class="form-horizontal" method="post"
				role="form">
				<div class="span9 margin-top">
					<div class="span9 center margin-bottom">
						<h1>Registration Form</h1>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="first name">First
						Name:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="firstname"
							name="firstname" placeholder="First Name">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="last name">Last
						Name:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="last" name="lastname"
							placeholder="last Name">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="username">User
						Name</label>
					<div class="col-sm-10">
						<input type="username" class="form-control" id="user"
							name="username" placeholder="Enter username">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="password">Password:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="pass"
							name="password" placeholder="Enter password">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="phonenumber">Phone
						Number</label>
					<div class="col-sm-10">
						<input type="phonenumber" class="form-control" id="ph"
							name="phonenumber" placeholder="Enter phonenumber">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Email:</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="email" name="email"
							placeholder="Enter email">
					</div>
				</div>




				<div class="form-group">
					<label class="control-label col-sm-2" for="apartmentNumber">Apartment
						Number</label>
					<div class="col-sm-10">
						<input type="apartmentnumber" class="form-control"
							id="apartmentnumber" name="apartmentNumber"
							placeholder="Enter apartmentnumber">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="streetName">Street
						Name</label>
					<div class="col-sm-10">
						<input type="streetName" class="form-control" id="streetName"
							name="streetName" placeholder="Enter streetname">
					</div>
				</div>


				<div class="form-group">
					<label class="control-label col-sm-2" for="city">City</label>
					<div class="col-sm-10">
						<input type="city" class="form-control" id="city" name="city"
							placeholder="Enter city">
					</div>
				</div>


				<div class="form-group">
					<label class="control-label col-sm-2" for="State">State</label>
					<div class="col-sm-10">
						<input type="state" class="form-control" id="state" name="State"
							placeholder="Enter state">
					</div>
				</div>


				<div class="form-group">
					<label class="control-label col-sm-2" for="country">Country</label>
					<div class="col-sm-10">
						<input type="country" class="form-control" id="country"
							name="country" placeholder="Enter country">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="zipcode">ZipCode</label>
					<div class="col-sm-10">
						<input type="zipcode" class="form-control" id="zipcode"
							name="zipcode" placeholder="Enter zipcode">
					</div>
				</div>
				<br>
				<div align="center">
					<input type="submit" name="submit" class="btn btn-success"
						value="register">
				</div>

			</form>

		</div>

	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
