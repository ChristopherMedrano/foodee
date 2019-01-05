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
		<title>Add Food Item</title>
	</head>
	<body>
		<!-- Header -->
		<jsp:include page="navbar.jsp" />
	
		<!-- Bread crumbs -->
		<div class="container">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/home">Home</a></li>
					<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/users/foodlog">Food log</a></li>
					<li class="breadcrumb-item">Add Food</li>
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
				<header id="header">
					<div class="container">
						<div class="row">
							<div class="">
								<h2 class="text-center"><span class="fas fa-utensils fa-xs"></span> Add Food</h2>
							</div>
						</div>
					</div>
				</header>
					<!-- Register new food application -->
					<form:form class="form-horizontal" action="addFood" modelAttribute="food">
						<fieldset>
							
							<!-- Food Name-->
							<div class="form-group" >
							  <label for="foodName">Food Name: </label>  
								  <form:input id="foodName" path="foodName" placeholder="food item name" class="form-control"  />
								  <form:errors path="foodName" cssClass="error" />
							</div>
							<!-- Calories-->
							<div class="form-group">
							  <label for="firstName">Calories:</label>  
								  <form:input id="calories" path="calories" placeholder="calories" class="form-control"  />
								  <form:errors path="calories" cssClass="error" />
							</div>
							<!-- Carbs-->
							<div class="form-group">
							  <label  for="totalCarbs">Carbs:</label>  
								  <form:input id="totalCarbs" path="totalCarbs" placeholder="carbs" class="form-control " />
								  <form:errors path="totalCarbs" cssClass="error" />
							</div>
							<!-- Fats -->
							<div class="form-group">
							  <label  for="totalFat">Fats:</label>
							    <form:input id="totalFat" path="totalFat" placeholder="fats" class="form-control " />
							  	<form:errors path="totalFat" cssClass="error" />
							</div>
							<!-- Protein -->
							<div class="form-group">
							  <label for="protein">Protein:</label>
							    <form:input id="protein" path="protein" placeholder="protein" class="form-control" />
							  	<form:errors path="protein" cssClass="error" />
							</div>
							<!-- Serving Size -->
							<div class="form-group">
							  <label for="protein">Serving Size:</label>
							    <form:input id="servingsize" path="servingsize" placeholder="enter serving size" class="form-control" />
							  	<form:errors path="servingsize" cssClass="error" />
							</div>
							<!-- Serving Size -->
							<div class="form-group">
							  <label for="protein">Serving Unit:</label>
							    <form:input id="servingunit" path="servingunit" placeholder="enter serving unit" class="form-control" />
							  	<form:errors path="servingunit" cssClass="error" />
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