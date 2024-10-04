<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="bg-secondary">
<%@include file="navbar.jsp"%>
<div class="container">
<div class="row align-items-start">
<div class="col-4">
</div>

<div class="col-6 mt-5">
<div class="card" style="width: 25rem;">
  <div class="card-body">
    <h5 class="card-title text-center mb-3 fw-bold text-primary">Register Here !</h5>
    
     <% if(session!=null){
			%>
			<%@include file="message.jsp"%>
			
			<% }%>
    
    <form action="RegisterServlet" method="post">
    <div class="mb-3">
    <label class="form-label">First Name</label>
    <input type="text" class="form-control" required
    name="fName" placeholder="Enter First Name">
    
    <div class="mb-3">
    <label class="form-label">Middle Name</label>
    <input type="text" class="form-control" required
    name="mName" placeholder="Enter Middle Name">
    
    <div class="mb-3">
    <label class="form-label">Last Name</label>
    <input type="text" class="form-control" required
    name="lName" placeholder="Enter Last Name">
    
  <div class="mb-3">
    <label class="form-label">Email address</label>
    <input type="email" class="form-control" required
    name="email" placeholder="Enter Email">
    
    <div class="mb-3">
    <label class="form-label">User Id</label>
    <input type="text" class="form-control" required
    name="userId" placeholder="Enter User ID">
    
  <div class="mb-3">
    <label class="form-label">Password</label>
    <input type="password" class="form-control" required
     name="password" placeholder="********">
  </div>
  
  <div class="text-center mb-3">
  <button type="submit" class="btn btn-primary">Register</button>
  <button type="reset" class="btn btn-danger">Reset</button>
  
  </div>
</form>
  </div>
</div>

</div>
</div>
</div>


<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js">
		
	</script>
</body>
</html>