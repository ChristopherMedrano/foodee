<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  -->
<!DOCTYPE html>
<html>
	<head>
		<!-- Google Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Great+Vibes|Happy+Monkey|Norican" rel="stylesheet">
		<!-- Mobile friendly -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
		<!-- Custom CSS -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
		<!-- Font awesome -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title>User List</title>
	</head>
	
	<body>
		<jsp:include page="navbar.jsp" />
		
		<!-- Bread crumbs -->
		<div class="container">
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/home" >Home</a></li>
					<li class="breadcrumb-item" ><a href="${pageContext.request.contextPath}/admin/portal" >Admin</a></li>
					<li class="breadcrumb-item active" >User List</li>
				</ol>
			</nav>
			</div>
		
		<!-- Main Content -->
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<!-- Sidebar -->
					<div>
						<jsp:include page="sidenavbar.jsp" />
					</div>
				</div><!-- end col -->
				
				<div class="col-md-9">
				<!-- Header -->
					<header id="header">
						<div class="container">
							<div class="row">
								<div class="">
									<h2 class="text-center">All Users</h2>
								</div>
							</div>
						</div>
					</header>
					<div class="card-header">
						Manage Users
					</div>
					<!-- Table for all users -->
					<table class="table">
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Actions</th>
						</tr>
						
						<!-- Loop through user list -->
						<c:forEach var="user" items="${users}">
							<tr>
								<td>${user.firstName}</td>
								<td>${user.lastName}</td>
								<td>${user.email}</td>
								<td>Edit | Delete</td>
							</tr>
						</c:forEach>
					</table>
									
				</div><!-- end col-->
			</div><!-- end row -->
		</div><!-- end container -->
		
		<jsp:include page="footer.jsp" />
	</body>
</html>