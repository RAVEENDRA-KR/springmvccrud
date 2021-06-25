<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
  
  <div class="container mt-3">
      
      <div class="row">
      
          <div class="col-md-6 offset-md-3">
          
           <h1 class="text-center mb-3">Update Customer Details</h1>
           
           <form action="${pageContext.request.contextPath }/handle-customer" method="post">
             <div class="form-group">
               <lable for="name">Customer Name</lable><input type="text"
                  class="form-control" id="name" aria-describedby="emailHelp"
                  name="name" value="${customer.name }"> 
             </div>
             
             <div class="form-group">
               <lable for="type">Customer Type</lable><input type="text"
                  class="form-control" id="type" aria-describedby="emailHelp"
                  name="type" value="${customer.type }"> 
             </div>
             
             <div class="form-group">
             <lable for="mobileno">Mobile Number</lable><input type="text"
                    name="mobileno"
                    class="form-control" id="mobileno" value="${customer.type }">
             </div>
             
             <div class="form-group">
               <lable for="address">Customer Address</lable>
               <textarea class="form-control" name="address" id="address" rows="3" ${customer.address }></textarea> 
             </div>
             
              <div class="form-group">
               <lable for="email">Customer Email</lable><input type="text"
                  class="form-control" id="email" aria-describedby="emailHelp"
                  name="email" value="${customer.email }"> 
             </div>
             
             <div class="form-group">
             <lable for="pincode">Pincode</lable><input type="text"
                    name="pincode"
                    class="form-control" id="pincode" value="${customer.pincode }">
             </div>
             
             <div class="container text-center">
                <button type="submit" class="btn btn-primary">Add</button>
             </div>
             
          </form>
      
        </div>
      </div>
  </div>  
</body>
</html>