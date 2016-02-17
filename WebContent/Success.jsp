<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>






	<%
  if (session.getAttribute("user") == null || session.getAttribute("password") == null) { %>
  
    <script>
	  
	  alert("Invalid Credentials");
	 // window.location.href="Userlogin.jsp";
	  </script> 
	 <% 
	  response.sendRedirect("UserLogin.jsp");
  }
  else{
	  
	  
	out.print("Welcome "+session.getAttribute("user"));
	
	  %>
	  
	
	  
<%
	// go to page - Do nothing
  }
 %> 




	<div id="LoginInformation">

<br>
		<strong>Username:</strong>
		<%=session.getAttribute("user")%>
<br>
		<strong>Password:</strong>
		<%=session.getAttribute("password")%>

<br>
		<form action="logout.jsp">
			<input type="submit" value="Logout">
		</form>
		</td>
	</div>
</body>
</html>