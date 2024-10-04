<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="hibernate.utils.FactoryProvider"%>
<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DashBoard Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body class="bg-secondary">
	<div class="mycontainer rounded-3">
		<%
		if (session != null) {
			User user1 = (User)session.getAttribute("user");
		%>
		<h2 class="mt-3 p-2">Welcome  <%= user1.getfName() %></h2>
		<table class="table">
		<tr>
		<th>User Id</th>
		<th>Password</th>
		</tr>
		
		<tr class="text-white">
		<td><%= user1.getUserId() %></td>
		<td><%= user1.getPassword() %></td>
		</tr>
		
		<tr>
		<th>First Name</th>
		<th>Middle Name</th>
		</tr>
		
		<tr class="text-white">
		<td><%= user1.getfName() %></td>
		<td><%= user1.getmName() %></td>
		</tr>
		
		<tr>
		<th>Last Name</th>
		<th>Email Id</th>
		</tr>
		
		<tr class="text-white">
		<td><%= user1.getlName() %></td>
		<td><%= user1.getEmail() %></td>
		</tr>
		
		</table>
		
		<% 	}%>
		
		<div class="text-center">
		<form action="LogoutServlet" method="post">
		<button type="submit" class="btn btn-danger ">LogOut</button>
		</form>
		</div>
		
	</div>
	<div class="usercontainer rounded-3">
	   <h3 class="text-center text-white mb-3 mt-3">All User Data</h3>
		<table class="table table-success table-striped p-3 
		text-center border border-3 border-primary ">
		<tr>
		<th>User Id</th>
		<th>First Name</th>
		<th>Middle Name</th>
		<th>Last Name</th>
		<th>Email Id</th>
		<th>Password</th>
		</tr>

		
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from User");
		List<User> users = q.list();
		for (User user : users){
		%>
		<tr>
		<td><%=user.getUserId() %></td>
		<td><%=user.getfName() %></td>
		<td><%=user.getmName() %></td>
		<td><%=user.getlName() %></td>
		<td><%=user.getEmail() %></td>
		<td><%=user.getPassword() %></td>
		</tr>
		<%
		}
		%>
		</table>
	</div>
</body>
</html>