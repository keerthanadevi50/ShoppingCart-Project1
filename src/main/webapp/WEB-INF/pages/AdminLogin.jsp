<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="/WEB-INF/pages/header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 12px;
    font-size: 12px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 100px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    align: center;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    align: center;
    
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
    align: center;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>

</head>
<body>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

			<div class="dropdown">
  <button class="dropbtn">Books</button>
  <div class="dropdown-content">
    <a href="productform">add</a>
    <a href="viewproduct">view</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">SelectByCategory</button>
  <div class="dropdown-content">
    <a href="categoryform">add</a>
    <a href="viewcategory">view</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Supplier</button>
  <div class="dropdown-content">
    <a href="supplierform">add</a>
    <a href="viewsupplier">view</a>
  </div>
</div>
  
<br>

<c:choose>

	<c:when test="${not empty viewCategory}">
		<%@include file="/WEB-INF/pages/viewcategory.jsp"%>
	</c:when>

	<c:when test="${not empty newCategory}">
		<%@include file="/WEB-INF/pages/categoryform.jsp"%>
	</c:when>
	
	<c:when test="${not empty editCategory}">
		<%@include file="/WEB-INF/pages/editcategoryform.jsp"%>
	</c:when>

	<c:when test="${not empty newProduct}">
		<%@include file="/WEB-INF/pages/productform.jsp"%>
	</c:when>
	 
	<c:when test="${not empty viewProduct}">
		<%@include file="/WEB-INF/pages/viewproduct.jsp"%>
	</c:when>
	
	<c:when test="${not empty editProduct}">
		<%@include file="/WEB-INF/pages/editproductform.jsp"%>
	</c:when>
	
	<c:when test="${not empty newSupplier}">
		<%@include file="/WEB-INF/pages/supplierform.jsp"%>
	</c:when>
	
	<c:when test="${not empty viewSupplier}">
		<%@include file="/WEB-INF/pages/viewsupplier.jsp"%>
	</c:when>
	
	<c:when test="${not empty Supplier}">
		<%@include file="/WEB-INF/pages/editsupplierform.jsp"%>
	</c:when>
	
	
	<c:otherwise>
			<h1 style="margin-left: 35%;">Welcome Admin !!</h1>
		</c:otherwise>
</c:choose>

</body>
</html>