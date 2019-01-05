<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<%@ page import = "com.foodee.models.Users" %>
<!-- 								 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
<title>Home</title>
</head>

<% Users u = (Users)session.getAttribute("userSession"); %>

<jsp:useBean id="userInfo" class="com.foodee.models.Users">
	<jsp:setProperty name="userInfo" property="*" />
</jsp:useBean>


<body>
	<h1>This is the home page</h1>
	<p>Welcome <%= u.getFirstName() %></p>
	<p>Welcome from session attribute: ${userSession.firstName} </p>
	<p>Welcome from model attribute: ${userModel.firstName} </p>
	<p>Email from param:  ${param.email} </p>
	<p>email from bean: <jsp:getProperty property="email" name="userInfo"/></p>
	<p>password from bean: <jsp:getProperty property="password" name="userInfo"/></p>
	<p>To access images in this jsp document: -img src="${pageContext.request.contextPath}/resources/images/spring-logo.png"-</p>
</body>
</html>