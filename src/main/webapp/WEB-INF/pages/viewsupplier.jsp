<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>Supplier Details</h2>
<table class="table">
  <tr>
  <th>Serial No</th>
  <th>Supplier Id</th>
    <th>Supplier Name</th>
    <th>Email Id</th>
    <th>Address</th>
    <th>Phone No</th>
    
  </tr>
  <c:forEach items="${supplierList}" var="supplier" varStatus="status">
  <tr>
  <td>${status.count}</td>
   <td>${supplier.id}</td>
    <td>${supplier.name}</td>
    <td>${supplier.emailId}</td>
    <td>${supplier.address}</td>
    <td>${supplier.phoneNo}</td>
    <td><a href="editsupplierform/${supplier.id}"> <span class="glyphicon glyphicon-pencil"></span></a> </td>
    <td><a href="deleteSupplier/${supplier.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
    
    
  </tr>
 </c:forEach>
</table>
