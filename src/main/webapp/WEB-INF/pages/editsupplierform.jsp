<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.jumbotron {
	background-color: white;
	color: #27A4F7;
}
button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}
}
</style>
</head>
<body>
<div class="container" style="color: #1F618D">
		<div class="jumbotron" style="background-color:#EAECEE">
			
			<h3 align="center" style="color: #27A4F7">Edit  your Supplier</h3>
			<form action="../editSupplier"class="form-horizontal"  method="post" role="form" name="supplier                                                                              ">
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Id of the Supplier:</label> 
					<input class="form-control"  type="text"  id="id" name="id" value="${Supplier.id}" readonly>
				</div>
                    <div style="color: #27A4F7" class="form-group">
					<label for="text">Name of the supplier</label> 
					<input class="form-control" placeholder="product" type="text"  id="name" name="name" value="${Supplier.name}" >
				</div>
			
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Address</label> 
					<input class="form-control" placeholder="Supplier info" type="text"  id="name" name="address" value="${Supplier.address}">
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Email Id</label> 
					<input name="emailId" class="form-control" placeholder="Description" type="text"  id="name"  value="${Supplier.emailId}" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">phoneNo</label> 
					<input class="form-control" placeholder="product" type="text"  id="name" name="phoneNo" value="${Supplier.phoneNo}" >
				</div>
				<button style="background-color: #27A4F7;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				
				</form>
</body>
</html>