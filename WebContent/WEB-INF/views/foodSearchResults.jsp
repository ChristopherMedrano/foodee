<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		<!-- Custom CSS -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
		<!-- Font awesome -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title>Food Search Results</title>
	</head>
	<body>
		<jsp:include page="navbar.jsp" />
		
		<!-- Bread crumbs -->
		<div class="container">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/home">Home</a></li>
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/foodlog">Food log</a></li>
					<li class="breadcrumb-item active">Search Results</li>
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
									<h2 class="text-center">Search Results</h2>
								</div>
							</div>
						</div>
					</header>
				
					<table class="table">
						<tr>
							<th>Food Name</th>
							<th>Calories</th>
							<th>Serving Size</th>
							<th>Quantity</th>
							<th>Meal Type</th>
							<th>Log</th>
						</tr>
						
						<!-- Loop through food list -->
						<c:forEach var="food" items="${searchResults}">
							<c:url var="link" value="/users/updateFoodForm">
								<c:param name="foodId" value="${food.foodId}" />
							</c:url>
						<tr>
							<form:form action="insertLog" modelAttribute="foodLog">
								<form:input type="hidden" path="userId" value="${user.userId}"/>
								<form:input type="hidden" path="food.foodId" value="${food.foodId}"/>		
								<form:input type="hidden" path="food.foodName" value="${food.foodName}"/> 
				  			 	<form:input type="hidden" path="food.calories" value="${food.calories}"/>
							 	<form:input type="hidden" path="food.protein" value="${food.protein}"/>
							 	<form:input type="hidden" path="food.totalCarbs" value="${food.totalCarbs}"/>
							 	<form:input type="hidden" path="food.totalFat" value="${food.totalFat}"/>
								
								<td>${food.foodName}</td>
								<td>${food.calories}</td>
								<td>${food.servingsize} ${food.servingunit}</td>
								<td>
									<form:input type="number" path="foodQty" />
								</td>
								<td>
									<form:select path="mealType" required="required">
										<option value="" selected disabled label="Select meal" />
										<option value="breakfast" label="Breakfast" />
										<option value="lunch" label="Lunch" />
										<option value="dinner" label="Dinner" />
										<option value="snack" label="Snack" />
									</form:select>
								</td>
								
								<td>
									<input type="submit" class="btn btn-primary" value="Add" />
									<!-- 
									<a href="${link}"><span class="far fa-edit fa-lg"></span></a>
									 -->
								</td>
								</form:form>
							</tr>
						</c:forEach>
					</table>

				</div> <!-- end col -->
			</div> <!-- end row -->
		</div> <!-- end container -->
		
		<jsp:include page="footer.jsp" />
		
		
	</body>
</html>