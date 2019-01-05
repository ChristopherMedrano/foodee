<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!--   -->
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
			<title>Foodee</title>
		</head>
	
		<body>
			<header class="home-header">
				<nav class="navbar navbar-expand-lg navbar-light bg-light py-3" style="background-color: transparent !important;">
					  <a class="navbar-brand" href="${pageContext.request.contextPath}/">Foodee</a>
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>
					
					  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
					    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
					      <li class="nav-item">
					        <a class="nav-link white-font" href="${pageContext.request.contextPath}/">Home</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link white-font" href="${pageContext.request.contextPath}/users/login">Sign In</a>
					      </li>
					    </ul>
					    	<a class="btn btn-outline-primary white-font" href="${pageContext.request.contextPath}/users/registrationForm">Sign up</a>
					  </div>
					</nav>
				<div class="jumbotron jumbotron-fluid text-center">
					<div class="container">
						<h1 class="display-4 logo-font oj-font">Foodee</h1>
						<p class="lead oj-font">Easy to use calorie tracking system.</p>
						<div>
							<a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/users/registrationForm">Start Now</a>
						</div>
					</div>
				</div>
			</header>
			<!-- Main Content -->
			
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="card-deck">
						
							  <div class="card text-center">
							 <img src="https://www.thefashionablehousewife.com/wp-content/uploads/2014/09/healthy-food.jpg" class="card-img-top" alt="healthy food">
							    <div class="card-body">
							      <h5 class="card-title">Log Food</h5>
							      <p class="card-text">Become more healthy. Keep track of everything you eat.</p>
							    </div>
							  </div>
							  <div class="card text-center">
								<div class="card-header">
								  </div>
								  <div class="card-body">
								 <!--    
								   <img src="https://www.thefashionablehousewife.com/wp-content/uploads/2014/09/healthy-food.jpg" class="card-img-top" alt="healthy food">
								-->     
								<div class="b-foodee" style="padding-top: 120px;">
									<h5 class="card-title">Become a Foodee</h5>
								    <p class="card-text">Leave nothing to chance. Track all your meals and achieve your goals!</p>
								    <a href="${pageContext.request.contextPath}/users/registrationForm" class="btn btn-primary">Register Now</a>
								</div>
								  </div>
								  <div class="card-footer text-muted">
								   
								  </div>
								</div>
							  <div class="card text-center">
							    <img src="https://fitnistics.com/wp-content/uploads/2015/06/fitness1.jpg" class="card-img-top" alt="healthy girl">
							    <div class="card-body">
							      <h5 class="card-title">Achieve Results</h5>
							      <p class="card-text">Whether you want to live a healthier lifestyle, lose weight, or gain muscle. Foodee will be your secret weapon. </p>
							    </div>
							  </div>
							</div>  
					</div> <!-- end column -->
				</div> <!-- end row -->
			</div> <!-- end container -->
			<jsp:include page="footer.jsp" />
		</body>
	</html>