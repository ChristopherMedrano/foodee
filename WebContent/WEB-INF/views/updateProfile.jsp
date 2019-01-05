<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		<title>Update Profile</title>
	</head>
	
	<body>
		<jsp:include page="navbar.jsp" />
		<!-- Bread crumbs -->
		<div class="container">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/home">Home</a></li>
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/profile">User Details</a></li>
					<li class="breadcrumb-item active">Update Profile</li>
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
					
				<div class="col-md-6 offset-md-1">	
				<!-- Header -->
					<header id="header">
						<div class="container">
							<div class="row">
								<div class="">
									<h2 class="text-center"><span class="fas fa-user fa-xs"></span> Update Profile</h2>
								</div>
							</div>
						</div>
					</header>
					
					<!-- Edit user info -->
					<form:form class="form-horizontal" action="updateUser" modelAttribute="user">
						<form:hidden path="userId" />
						<form:hidden path="password" />
						<fieldset>
							<!-- Form Name -->
							<legend>Update Profile</legend>
							
							<!-- Text input-->
							<div class="form-group" >
							  <label for="email">Email: </label>  
								  <form:input id="email" path="email" placeholder="email address" class="form-control" />
								  <form:errors path="email" cssClass="error" />
							</div>
							<!-- Text input-->
							<div class="form-group">
							  <label for="firstName">First name:</label>  
								  <form:input id="firstName" path="firstName" placeholder="first name" class="form-control"  />
								  <form:errors path="firstName" cssClass="error" />
							</div>
							<!-- Text input-->
							<div class="form-group">
							  <label class="col-md-4 control-label" for="lastName">Last name:</label>  
								  <form:input id="lastName" path="lastName" placeholder="last name" class="form-control" />
								  <form:errors path="lastName" cssClass="error" />
							</div>
							<input type="submit" class="btn btn-primary" value="Update" />
						
						</fieldset>
					</form:form>					
					
				</div>
			</div><!-- end row -->
		</div><!-- end container -->
		
		<jsp:include page="footer.jsp" />
	</body>
</html>