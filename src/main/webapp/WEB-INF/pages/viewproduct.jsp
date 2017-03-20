<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>List of Products</h2>
<table class="table">
  <tr>
  <th>Serial No</th>
    <th>Category </th>
    <th>Name</th>
    <th>Book Description</th>
    <th>Manufacturer</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Author</th>
    <th>Stock</th>
  </tr>
  <c:forEach items="${productList}" var="product" varStatus="status">
  <tr>
  <td>${status.count}</td>
   <td>${product.category}</td>
    <td>${product.name}</td>
    <td>${product.description }</td>
    <td>${product.mfg }</td>
    <td>${product.price }</td>
    <td>${product.published }</td>
    <td>${product.quantity }</td>
    <td>${product.author }</td>
    <td>${product.stock }</td>
    <td><a href="editproductform/${product.pid}"> edit </a> </td>
    <td><a href="deleteProduct/${product.pid}">delete</a></td>
    
  </tr>
 </c:forEach>
</table>
</body>
</html>