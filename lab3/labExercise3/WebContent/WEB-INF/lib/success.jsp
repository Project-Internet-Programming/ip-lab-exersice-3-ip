<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>You are successfully logged in !</p>
	<%
		User user = (User)request.getAttribute("user");
		out.println("Welcome " + user.getUserName());
	%>

</body>
</html>