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
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
		<!-- Custom CSS -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
		<!-- Font awesome -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title>Edit Food Item</title>
	</head>
	<body>
		<jsp:include page="navbar.jsp" />
			<!-- Bread crumbs -->
		<div class="container">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/home">Home</a></li>
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/foodlog" >Food log</a></li>
					<li class="breadcrumb-item" active>Edit food</li>
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
									<h2 class="text-center">Edit Food</h2>
								</div>
							</div>
						</div>
					</header>
				<!-- Upate food item -->
				<form:form class="form-horizontal" action="updateFood" modelAttribute="food">
					<form:input type="hidden" path="foodId" value="${food.foodId}" />
					<fieldset>
						<!-- Form Name -->
						<legend>Edit Food</legend>
						
						<div class="form-group" >
						  <label  for="foodName">Food Name: </label>  
						  <form:input id="foodName" path="foodName" placeholder="food item name" class="form-control"  />
						  <form:errors path="foodName" cssClass="error" />
						</div>
						
						<div class="form-group">
						  <label  for="firstName">Calories:</label>  
						  <form:input id="calories" path="calories" placeholder="calories" class="form-control"  />
						  <form:errors path="calories" cssClass="error" />
						</div>
		
						<div class="form-group">
						  <label  for="totalCarbs">Carbs:</label>  
						  <form:input id="totalCarbs" path="totalCarbs" placeholder="carbs" class="form-control" />
						  <form:errors path="totalCarbs" cssClass="error" />
						</div>
		
						<div class="form-group">
						  <label  for="totalFat">Fats:</label>
						    <form:input id="totalFat" path="totalFat" placeholder="fats" class="form-control" />
						  	<form:errors path="totalFat" cssClass="error" />
						</div>
		
						<div class="form-group">
						  <label  for="protein">Protein:</label>
						    <form:input id="protein" path="protein" placeholder="protein" class="form-control " />
						  	<form:errors path="protein" cssClass="error" />
						</div>
						
						<div class="form-group">
						  <label  for="servingsize">Serving Size:</label>
						    <form:input id="servingsize" path="servingsize" class="form-control " />
						  	<form:errors path="servingsize" cssClass="error" />
						</div>
						
						<div class="form-group">
						  <label for="servingunit">Serving Unit:</label>
						    <form:input id="servingunit" path="servingunit" class="form-control" />
						  	<form:errors path="servingunit" cssClass="error" />
						</div>
						
						<!-- Button -->
						<input type="submit" class="btn btn-primary" value="Submit" />
					</fieldset>
				</form:form>
		
				</div> <!-- end col -->
			</div> <!-- end row -->
		</div> <!-- end container -->
		
		<jsp:include page="footer.jsp" />
		
	</body>
</html>