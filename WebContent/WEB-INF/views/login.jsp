<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--@ page errorPage="error.jsp" --%>
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
		<title>Login</title>
	</head>
	<body>
		<jsp:include page="navbar.jsp" />
		
		<!-- Login Page -->
		<div class="container"> 
					
			<div class="row "> 
			
				<div class="col-md-4 offset-md-4 mt-5"> 
				<header id="header">
					<div class="container">
						<div class="row">
							<div class="">
								<h2 class="text-center"><span class="fas fa-user fa-xs"></span> Log in</h2>
							</div>
						</div>
					</div>
				</header>
					<form:form action="authenticateUser" modelAttribute="login" >
						<div class="form-group">
							<label for="email" >Email</label>
							<form:input path="email"  class="form-control" type="email" placeholder="enter email" required="required"/>
							<form:errors path="email" cssClass="error" />
						</div>
						<div class="form-group">
							<label for="email">Password</label>
							<form:input path="password" type="password" class="form-control" placeholder="enter password" required="required"/>
							<form:errors path="password" cssClass="error" />
						</div>
						<input type="submit" class="btn btn-primary" value="Login" />
						<div class="form-group">
							<small class="form-text text-muted">Not a member? <a href="${pageContext.request.contextPath}/users/registrationForm">Sign Up</a></small>
						</div>
					</form:form>
				</div>
			</div>
		</div>	
		<jsp:include page="footer.jsp" />
	</body>
</html>