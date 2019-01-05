<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		<title>Register</title>
	</head>
	
	<body>
		<jsp:include page="navbar.jsp" />
		
		<!-- Main Content -->
		<div class="container">
			<div class="row">
				<div class="col-md-6 offset-md-3 mt-5">
				<!-- Header -->
				<header id="header">
					<div class="container">
						<div class="row">
							<div class="">
								<h2 class="text-center"><span class="fas fa-user-check fa-xs"></span> Register User</h2>
							</div>
						</div>
					</div>
				</header>
					<!-- Register user to application -->
					<form:form action="addNewUser" modelAttribute="user">
						<fieldset>
							<!-- Text input-->
							<div class="form-group" >
							  <label for="email">Email: </label>  
							  <form:input id="email" path="email" placeholder="email address" class="form-control"  />
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
							  <label for="lastName">Last name:</label>  
							  <form:input id="lastName" path="lastName" placeholder="last name" class="form-control" />
							  <form:errors path="lastName" cssClass="error" />
							</div>
							<!-- Password input-->
							<div class="form-group">
							  <label for="password">Password:</label>
							    <form:input id="password" path="password" type="password" placeholder="password" class="form-control" />
							  	<form:errors path="password" cssClass="error" />
							</div>
							<!-- Password input-->
							<div class="form-group">
							  <label for="confirmPassword">Confirm Password:</label>
							    <input id="confirmPassword" name="confirmPassword" type="password" placeholder="confirm password" class="form-control" />
							</div>
							<!-- Button -->
							<input type="submit" class="btn btn-primary" value="Submit" />
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</body>
</html>