<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Form</title>
</head>
<body>
	<div class="container-wrapper">
		<div class="container">
		
		<form action="addproduct">
		
			
			<div>
			<label>category</label>
				<input type="text" name="category">
			</div>
			<div>
			<label>product description</label>
				<input type="text" name="description">
			</div>
			<div>
			<label>manufacturer</label>
				<input type="text" name="mfg">
			</div>
			
			
			<div>
			<label>name</label>
				<input type="text" name="name">
			</div>
			<div>
			<label>price</label>
				<input type="text" name="price">
			</div>
			<div>
			<label>quantity</label>
				<input type="text" name="quantity">
			</div>
		<div>
			<input type="submit" value="addProduct">
		
		
		</div>
			
		
		</form>
		
		</div>
	</div>
</body>
</html>