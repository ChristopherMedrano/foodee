<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- Google Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Great+Vibes|Happy+Monkey|Norican" rel="stylesheet">
		<!-- Mobile friendly -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		<!-- Custom CSS -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
		<!-- Font awesome -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title>Admin</title>
	</head>
	<body>
		<jsp:include page="navbar.jsp" />
			
			<!-- Bread crumbs -->
			<div class="container">
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/home">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Admin</li>
				</ol>
			</nav>
			</div>
		
			<!-- Main Content -->
			<div class="container">
				<div class="row">
				
					<!-- Sidebar -->
					<div class="col-md-3">
						<div>
							<jsp:include page="sidenavbar.jsp" />
						</div>
					</div> <!-- end col -->
					
					<div class="col-md-9">
					
						<!-- Header -->
						<header id="header">
							<div class="container">
								<div class="row">
									<div class="">
										<h2 class="text-center"><span class="fas fa-unlock fa-xs"></span> Admin</h2>
									</div>
								</div>
							</div>
						</header>
						<div class="card-deck">
							<div class="card text-center">
								<img src="..." class="card=img-top" alt="">
								<div class="card-body">
									<h3 class="card-title">Users</h3>
									<h5 class="card-subtitle">Manage all users</h5>
									<p class="card-text">See a list of all users</p>
									<a href="${pageContext.request.contextPath}/admin/userlist" class="btn btn-primary">See Users</a>
								</div>
							</div><!-- end col -->
							<div class="card text-center">
								<img src="..." class="card=img-top" alt="">
								<div class="card-body">
									<h3 class="card-title">Foods</h3>
									<h5 class="card-subtitle">Manage all foods</h5>
									<p class="card-text">See a list of all foods</p>
									<a href="${pageContext.request.contextPath}/admin/foodlist" class="btn btn-primary">See foods</a>
								</div>
							</div><!-- end col -->
						</div><!-- card deck -->
					</div> <!-- end col -->
					
				</div> <!-- end row -->
			</div> <!-- end container -->
		<jsp:include page="footer.jsp" />
	</body>
</html>