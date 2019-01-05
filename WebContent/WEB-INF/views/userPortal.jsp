<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "com.foodee.models.Users" %>
<%@ page errorPage="error.jsp" %> 
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
		<title>Foodee App</title>
	</head>
	<body>
		<jsp:include page="navbar.jsp" />
		
		<!-- Main Content -->
		<div class="container pt-3">
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
									<h2 class="text-center"><span class="fas fa-cogs fa-xs"></span> User Portal</h2>
								</div>
							</div>
						</div>
					</header>
					<div class="card-header" style="margin-bottom: 10px; ">
						Welcome ${user.firstName}
					</div>
					<div class="card-deck">
						<div class="card text-center">
							<img src="..." class="card=img-top" alt="">
							<div class="card-body">
								<h5 class="card-title">User Profile</h5>
								<p class="card-text">See your user details and update account settings</p>
								<a href="profile" class="btn btn-primary">Go to profile</a>
							</div>
						</div><!-- end col -->
						<div class="card text-center">
							<img src="..." class="card=img-top" alt="">
							<div class="card-body">
								<h5 class="card-title">Food Logs</h5>
								<p class="card-text">See your logs and nutrition information</p>
								<a href="foodlog" class="btn btn-primary">Go to logs</a>
							</div>
						</div><!-- end col -->
						<div class="card text-center">
							<img src="..." class="card=img-top" alt="">
							<div class="card-body">
								<h5 class="card-title">Foods</h5>
								<p class="card-text">Add custom food to our database</p>
								<a href="addFoodForm" class="btn btn-primary">Add foods</a>
							</div>
						</div><!-- end col -->
					</div>
					
				</div><!-- end col-->
			</div><!-- end row -->
		</div><!-- end container -->
		
		<!-- Main Content 
		<div class="row">
			<div class="col-md-3">
				<!-- Sidebar 
				<div>
					<jsp:include page="sidenavbar.jsp" />
				</div>
			</div><!-- end col 
			
			<div class="col-md-9">
				
			</div>
		</div> -->
		
		
		<jsp:include page="footer.jsp" />
	</body>
</html>