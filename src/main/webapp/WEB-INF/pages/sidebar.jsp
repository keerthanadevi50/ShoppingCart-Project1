<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sidebar</title>
</head>
<body>
This is sidebar

<nav class="w3-sidenav w3-black" style="width:13%; height: 100%;">
  <br>
  <table class="sidev">
  <c:forEach items="${categorylist}" var="category">
  <tr >
  <td><a href="viewproduct/${category.name}">${category.name}</a></td>
  </tr>
  </c:forEach>
  
  </table>
</nav>
</body>
</html>