<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<table class="table table-striped table-hover">
		<tr>
			<th>Food Name</th>
			<th>Calories</th>
			<th>Carbs (g)</th>
			<th>Fat (g)</th>
			<th>Protein (g)</th>
			<th>Actions</th>
		</tr>
		
	<!-- Loop through user list -->
	<c:set var="caloriesTotal" value="${0}" />
	<c:set var="proteinTotal" value="${0}" />
	<c:set var="carbsTotal" value="${0}" />
	<c:set var="fatsTotal" value="${0}" />
	
	
	
	<c:forEach var="log" items="${lunchLog}">
	
		<!-- Edit Foodlog Link -->
		<c:url var="edit" value="/users/updateFoodLogForm">
			<c:param name="logId" value="${log.logId}" />
		</c:url>
		
		<!-- Delete Foodlog Link -->
		<c:url var="delete" value="/users/deleteFoodLog">
			<c:param name="logId" value="${log.logId}" />
		</c:url>
		
		<!-- Varaiables for totals -->
		<c:set var="servingAmount" value="${log.food.servingsize * log.foodQty}" />
		<c:set var="servingAmountCalories" value="${log.food.calories * log.foodQty}" />
		<c:set var="servingAmountCarbs" value="${log.food.totalCarbs * log.foodQty}" />
		<c:set var="servingAmountFats" value="${log.food.totalFat * log.foodQty}" />
		<c:set var="servingAmountProtein" value="${log.food.protein * log.foodQty}" />
		
		<c:set var="caloriesTotal" value="${caloriesTotal + servingAmountCalories}" />
		<c:set var="carbsTotal" value="${carbsTotal + servingAmountCarbs}" />
		<c:set var="fatsTotal" value="${fatsTotal + servingAmountFats}" />
		<c:set var="proteinTotal" value="${proteinTotal + servingAmountProtein}" />
	<tr>
		<td>${log.food.foodName}, <span>${servingAmount} ${log.food.servingunit}</span></td>
		<td>${servingAmountCalories}</td>
		<td>${servingAmountCarbs} g</td>
		<td>${servingAmountFats} g</td>
		<td>${servingAmountProtein} g</td>
		<td>
			<a href="${edit}"><span class="far fa-edit fa-lg"></span></a>
			<a href="${delete}" onclick="if (!(confirm('Click ok to proceed with delete'))) return false" ><span class="far fa-trash-alt fa-lg text-danger"></span></a>
		</td>
	</tr>
	</c:forEach>
	<tr></tr>
	<tr>
		<td>Totals</td>
		<td>${caloriesTotal} </td>
		<td>${carbsTotal} g</td>
		<td>${fatsTotal} g</td>
		<td>${proteinTotal} g</td>
		<td>
			<!-- Button trigger modal 
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#searchFoodModal">
		 		 Add to log
			</button>
			-->
		</td>
	</tr>
</table>

	<!-- Add to overall daily total -->
	<c:set var="dailyCalories" value="${dailyCalories + caloriesTotal}" scope="request"/>
	<c:set var="dailyCarbs" value="${dailyCarbs + carbsTotal}" scope="request"/>
	<c:set var="dailyFats" value="${dailyFats + fatsTotal}" scope="request"/>
	<c:set var="dailyProtein" value="${dailyProtein + proteinTotal}" scope="request"/>
	
	
	