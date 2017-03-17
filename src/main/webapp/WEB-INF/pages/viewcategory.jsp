<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>List of Categories</h2>

<table class="table">
  <tr>
  <th>Serial No</th>
    <th>Category ID</th>
    <th>Category Name</th>
    <th>category details</th>
    <th>edit</th>
    <th>delete</th>
  </tr>
  
  <c:forEach items="${categoryList}" var="category" varStatus="status">
  <tr>
  <td>${status.count}</td>
   <td>${category.id}</td>
    <td>${category.categoryName}</td>
    <td>${category.categoryDetails }</td>
    <td><a href="editCategory/${category.id}"> edit </a> </td>
    <td><a href="deleteCategory/${category.id}">delete</a></td>
  </tr>
 </c:forEach>
</table>