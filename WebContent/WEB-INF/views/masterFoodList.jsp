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
		<title>Food List</title>
	</head>
	
	<body>
		<jsp:include page="navbar.jsp" />
			<!-- Bread crumbs -->
			<div class="container">
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/home">Home</a></li>
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/portal">Admin</a></li>
					<li class="breadcrumb-item active" aria-current="page">Food List</li>
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
										<h2 class="text-center">All foods</h2>
									</div>
								</div>
							</div>
						</header>
						<div class="card-header">
							Manage Foods
						</div>
						<!-- Table for all users -->
						<table class="table">
							<tr>
								<th>Food Id</th>
								<th>Food Name</th>
								<th>Calories</th>
								<th>Total Fat</th>
								<th>Protein</th>
								<th>Carbs</th>
								<th>Edit</th>
							</tr>
							
							<!-- Loop through user list -->
							<c:forEach var="food" items="${foods}">
								<!-- Edit Foodlog Link -->
								<c:url var="edit" value="/users/updateFoodForm">
									<c:param name="foodId" value="${food.foodId}" />
								</c:url>
								
								<!-- Delete Foodlog Link -->
								<c:url var="delete" value="/users/deleteFood">
									<c:param name="foodId" value="${food.foodId}" />
								</c:url>
								
								<tr>
									<td>${food.foodId}</td>
									<td>${food.foodName}</td>
									<td>${food.calories}</td>
									<td>${food.totalFat}</td>
									<td>${food.protein}</td>
									<td>${food.totalCarbs}</td>
									<td>
										<a href="${edit}"><span class="far fa-edit fa-lg"></span></a>
									</td>
							<!-- 		
									<td>${food.foodGroup}</td>
									<td>${food.saturatedFat}</td>
									<td>${food.transFat}</td>
									<td>${food.monoUnsatFat}</td>
									<td>${food.cholesterol}</td>
									<td>${food.sodium}</td>
									<td>${food.totalCarbs}</td>
									<td>${food.fiber}</td>
									<td>${food.sugars}</td>
									
									<td>${food.calcium}</td>
									<td>${food.iron}</td>
									<td>${food.potassium}</td>
							-->
								</tr>
							</c:forEach>
						</table>
										
					</div><!-- end col-->
				</div><!-- end row -->
			</div><!-- end container -->
			
			<jsp:include page="footer.jsp" />
	</body>
</html>