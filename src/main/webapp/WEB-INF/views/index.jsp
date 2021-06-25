<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
     <div class="container mt-3">
     
        <div class="row">
        
           <div class="col-md-12">
             <h1 class="text-center mb-3">Welcome to Customer</h1>
           <table class="table">
   <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Customer Name</th>
      <th scope="col">Customer Type</th>
      <th scope="col">Mobile Number</th>
      <th scope="col">Customer Address</th>
      <th scope="col">Customer Email</th>
      <th scope="col">Pincode</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${customers }" var="c">
    <tr>
      <th scope="row">${p.id}</th>
      <td>${p.name}</td>
      <td>${p.type}</td>
      <td>${p.mobileno}</td>
      <td>${p.address}</td>
      <td>${p.email}</td>
      <td>${p.pincode}</td>
      <td>
      
      <a href="delete/${c.id }"><i class="fas fa-trash-alt text-danger" style="font-size:20px"></i></a>
      <a href="update/${c.id }"><i class="fas fa-user-edit text-primary" style="font-size:20px"></i></a>
      
      </td>
    </tr>
    </c:forEach>
    
  </tbody>
</table>
           
           </div>
        
        </div>
     
     </div>
  
  
</body>
</html>