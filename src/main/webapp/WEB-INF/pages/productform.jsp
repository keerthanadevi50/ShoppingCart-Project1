<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Product Form</title>
<style>


.button:hover {
background: #ccc;
cursor: pointer;
}

</style>
</head>
<body>
		<div class="container">
		
		<form class="form-horizontal" action="addproduct" method="post" enctype="multipart/form-data" >
		
		<div class="form-group">
			<label class="control-label col-sm-2">product name</label>
				<input type="text" name="name">
			</div>
			
			<div class="form-group">
			<label class="control-label col-sm-2">product description</label>
			
				<input type="text" name="description">
			
			</div>
			
			<div class="form-group">
			<label class="control-label col-sm-2">category name</label>
				<select name="category">
				<option value="">Select Category</option>
				<c:forEach items="${categoryList}" var="category">
				<option value="${category.categoryName}">${category.categoryName}</option>
				
				</c:forEach>
				</select>
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2">Author</label>
				<input type="text" name="author">
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2">Year published</label>
				<input type="text" name="published">
			
			</div>
						<div class="form-group">
			<label class="control-label col-sm-2">manufacturer</label>
			
				<select name="mfg">
				<option value="">Select Supplier</option>
				<c:forEach items="${supplierList}" var="supplier">
				<option value="${supplier.name}">${supplier.name}</option>
				
				</c:forEach>
				</select>
			</div>
			
			
			
			<div class="form-group">
			<label class="control-label col-sm-2">price</label>
			
				<input type="text" name="price">
			
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2">stock</label>
				<input type="text" name="stock">
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2">quantity</label>
			
				<input type="text" name="quantity">
			
			</div>
			
			<div class="form-group">
			<label class="control-label col-sm-2">Select your product image</label>
			
				<input type="file" name="prdImage" accept=".jpg,.png,.jpeg">
			
			</div>
		<div>
			<input type="submit" value="addProduct">
		</div>
		
		</form>
		
		</div>
		<%@ include file="footer.jsp" %>

</body>
</html>