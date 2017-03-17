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
		
		<form action="addproduct" method="post" enctype="multipart/form-data">
		
		<div>
			<label>product name</label>
				<input type="text" name="name">
			</div>
			
			
			<div>
			<label>product description</label>
				<input type="text" name="description">
			</div>
			<div>
			<label>category name</label>
				<select name="category">
				<option value="">Select Category</option>
				<c:forEach items="${categoryList}" var="category">
				<option value="${category.categoryName}">${category.categoryName}</option>
				
				</c:forEach>
				</select>
			</div>
			<div>
			<label>Author</label>
				<input type="text" name="author">
			</div>
			<div>
			<label>Year published</label>
				<input type="text" name="published">
			</div>
						<div>
			<label>manufacturer</label>
				<select name="mfg">
				<option value="">Select Supplier</option>
				<c:forEach items="${supplierList}" var="supplier">
				<option value="${supplier.name}">${supplier.name}</option>
				
				</c:forEach>
				</select>
			</div>
			
			
			
			<div>
			<label>price</label>
				<input type="text" name="price">
			</div>
			
			<label>stock</label>
				<input type="text" name="stock">
			</div>
			<div>
			<label>quantity</label>
				<input type="text" name="quantity">
			</div>
			
			<div>
			<label>Select your product image</label>
				<input type="file" name="prdImage" accept=".jpg,.png,.jpeg">
			</div>
		<div>
			<input type="submit" value="addProduct">
		
		
		</div>
			
		
		</form>
		
		</div>
	</div>
</body>
</html>