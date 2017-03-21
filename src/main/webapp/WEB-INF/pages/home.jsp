<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>shoppingCart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
header {
	background-color: #27A4F7;
	color: white;
	padding: 10px 50px 40px 50px;
}
body {
	background-color: white;
}
button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}
.carousel-inner>.item>img {
	width: 1200px;
	height: 100px;
}
form {
	color: white;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/pages/header.jsp" %>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value="/resources/img/g.jpg"/>" alt="first"
					width="900px" height="100px">
			</div>
<div class="item">
				<img src="<c:url value="/resources/img/index.jpg"/>"
					alt="second" width="900" height="100">
			</div>

			<div class="item">
				<img src="<c:url value="/resources/img/s.jpg"/>"
					alt="third" width="900" height="100">
			</div>
			<div class="item">
				<img src="<c:url value="/resources/img/y.jpg"/>"
					alt="fourth" width="900" height="100">
			</div>

		</div>
		<!-- Left and right controls -->
		<a class=" carousel-control left" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>

		</a> <a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>

		</a>
		<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>

		</a>
		
		<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>

		</a>
	</div>
	<div class="container">
	<div class ="row">
	
     <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">WEEKEND DEAL</div>
        <div class="panel-body">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			
			
			</ol>
			<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value="/resources/img/job.jpg"/>" class="img-responsive" style="width:100%" alt="Image">
			</div>
<div class="item">
				<img src="<c:url value="/resources/img/coc.jpg"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="/resources/img/neet.jpg"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="/resources/img/mer.jpg"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="/resources/img/gulli.jpeg"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<a class=" carousel-control left" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>

		</a> <a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>

		</a>
		<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>

		</a>
		<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>

		</a>
		<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>

		</a>
		<div class="panel-footer">Buy any 2 fictions and get 50% offer on each</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		
		
		<div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
			<div class="item active">
			<img src="resources/productimages/ProductId7" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="item">
				<img src="<c:url value="resources/productimages/ProductId16"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="resources/img/Deli.jpg"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="resources/img/vam.jpg"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="resources/img/melu.jpg"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<a class=" carousel-control left" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span></a> 
		<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>
			</a> 
			<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>
			</a> 
			<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>

		</a>
		<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>

		</a>
		<div class="panel-footer">Buy 3 fiction and get 50% offer on each</div>
        </div>
		</div>
		</div>
		</div>
		</div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">24 HOURS DEAL</div>
        <div class="panel-body">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
			<div class="item active">
			<img src="resources/productimages/ProductId9" class="img-responsive" style="width:100%" alt="Image"></div>
			 <div class="item">
				<img src="<c:url value="resources/productimages/ProductId19"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="resources/productimages/ProductId13"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="item">
				<img src="<c:url value="resources/img/angel.jpg"/>"
					class="img-responsive" style="width:100%" alt="Image">
			</div>
			<a class=" carousel-control left" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span></a> 
		<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>
			</a> 
			<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>
			</a>
			<a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span>

		</a>
        <div class="panel-footer">20% offer on dan brown's da vinci-series </div>
        </div>
		</div>
		</div>
		</div>
		</div>
      
  </div>
</div>



</br>
<%@ include file="footer.jsp" %>
</body>
</html>