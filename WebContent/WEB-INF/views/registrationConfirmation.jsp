<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:useBean id='user' scope='session' class='com.foodee.models.Users' />
<!--  -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Successfully Registered</title>
	</head>
	
	<body>
		<h1>Registration details</h1>
		
		<p>First name: ${user.firstName}</p>
		<p>Java bean: <jsp:getProperty property='firstName' name='user'/></p>
		<p>Last name: ${user.lastName}</p>
		<p>Email: ${user.email}</p>
		<p>Password: ${user.password}</p>
		
		<a href="home">Goto homepage</a>
	</body>
</html>