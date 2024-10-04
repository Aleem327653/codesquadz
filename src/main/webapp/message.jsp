<% 
String msg=(String)session.getAttribute("msg");	
if (msg != null) {
	%>
<div class="alert alert-dark" role="alert">
  <h5><%=msg %></h5>
</div>
	
<%	
	session.removeAttribute("msg");
}
%>







