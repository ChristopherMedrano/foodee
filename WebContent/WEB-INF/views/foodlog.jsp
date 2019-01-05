<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		<!-- Custom CSS -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
		<!-- Font awesome -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title>Food Log</title>
	</head>
	<body>
		<jsp:include page="navbar.jsp" />
		
		<!-- Bread crumbs -->
		<div class="container">
			<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/home">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Food log</li>
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
					<button type="button" class="btn btn-primary btn-block mt-3" data-toggle="modal" data-target="#searchFoodModal">
			 		 	Add to log
					</button>
				</div> <!-- end col -->
				
				<div class="col-md-9">
					
					<!-- Header -->
					<header id="header">
						<div class="container">
							<div class="row">
								<div class="">
									<h2 class="text-center"><span class="fas fa-utensils fa-xs"></span> Food Log </h2>
									<!--  
										<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#searchFoodModal">
												Add to log </button>
									-->
								</div>
							</div>
						</div>
					</header>
					
					<!-- List all logs -->
					<div class="logs">
						
						<!-- Progress bars -->
						<h3>Breakfast</h3>	
						<jsp:include page="logBreakfast.jsp" />
						
						<h3>Lunch</h3>
						<jsp:include page="logLunch.jsp" />
						
						<h3>Dinner</h3>
						<jsp:include page="logDinner.jsp" />
						
						<h3>Snack</h3>
						<jsp:include page="logSnack.jsp" />
					</div>
					
					<!-- Calorie Totals -->
					<div>
						<c:set var="foodLog" value="${dailyCalories}" />
						<h3>Daily Total</h3>
						<table class="table">
							<tr>
								<td>Calories</td>
								<td>Carbs</td>
								<td>Fat</td>
								<td>Protein</td>
							</tr>
							<tr>
								<td>${dailyCalories}</td>
								<td>${dailyCarbs} g</td>
								<td>${dailyFats} g</td>
								<td>${dailyProtein} g</td>
							</tr>
						</table>
					</div>
					
				</div> <!-- end col -->
			</div> <!-- end row -->
		</div> <!-- end container -->
		
		<!-- Modal -->
		<div class="modal fade" id="searchFoodModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalCenterTitle">Search Foods</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form action="searchFood" method="get">
					<input name="foodName" placeholder="search foods" class="form-control input-md"  />
					<button type="submit" class="btn btn-primary" class="btn btn-primary">Search</button>
				</form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<jsp:include page="footer.jsp" />
	</body>
</html>