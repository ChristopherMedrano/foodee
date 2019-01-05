<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Foodee</title>
</head>
<%
		//	1. DB Driver Manager
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//	2. Connection
		String url = "jdbc:oracle:thin:@myoracledb.ce42myeoxezo.us-east-1.rds.amazonaws.com:1521:ORCL";
		String user = "cmedrano625";
		String password = "1Hughjass!";
		
		Connection conn = DriverManager.getConnection(url, user, password);
		
		//	3. Verify connection status
		System.out.println(conn.isClosed() ? "DB Connection is closed" : "DB Connection is open");
	%>
<body>
	<h1>Foodee</h1>
	<h2>Food tracking app</h2>
	<p><% out.println(conn.isClosed() ? "DB Connection is closed" : "DB Connection is open"); %></p>
	
	<a href ="${pageContext.request.contextPath}/">Home</a><br />
	<a href="register">Register Now!</a><br />
	<a href="login">Login</a><br />
	<a href="admin">Admin Page</a><br />
</body>
</html>