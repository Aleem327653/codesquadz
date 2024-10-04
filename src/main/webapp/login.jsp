<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Login page</title>
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
    <h5 class="card-title text-center mb-3 fw-bold text-primary">Login Here !</h5>
    
   <% if(session!=null){
			%>
			<%@include file="message.jsp"%>
			
			<%
			}%>
    
    <form action="LoginServlet" method="post">
  <div class="mb-3">
    <label class="form-label">User Id</label>
    <input type="text" class="form-control" name="userId"
     placeholder="Enter User Id" required>
    </div>
    
  <div class="mb-3">
    <label class="form-label">Password</label>
    <input type="password" class="form-control" name="password" 
    placeholder="*******" required>
  </div>
  
  <p>New User ? <a href="register.jsp">SignUp Here</a></p>
  <div class="text-center">
  <button type="submit" class="btn btn-primary ">Login</button>
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