<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List,com.tap.model.Restaurant" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Restaurant Listing</title>

   <link rel="stylesheet" href="home.css"/>
</head>

<body>


<h1>NAMMA KITCHEN</h1>

<div class="container">

<%
List<Restaurant> allRestaurants= (List<Restaurant>) request.getAttribute("allRestaurants");

for(Restaurant restaurant:allRestaurants){
	

	%>
	<a href="menu?restaurantId=<%= restaurant.getRestaurantid() %>">
	<!-- Restaurant 1 -->
	
 	 
<div class="card">
    <img src="<%= restaurant.getImageurl() %>" alt="Restaurant">
    <div class="content">
    
        <div class="title"><%= restaurant.getRestaurantname() %></div>
        <div class="rating"><%= restaurant.getRating() %>★</div>
        <div class="row"><%= restaurant.getRestaurantid() %></div>
        <div class="row"><%= restaurant.getAddress() %></div>
        <div class="row"><%= restaurant.getCuisine()  %></div>
        <div class="row"><%= restaurant.getDeliverytime()  %>mins</div>
        <div class="row">Status: <span class="active"><%= restaurant.getIsactive() %></span></div>
        <div class="row"><%= restaurant.getAdminuserid() %></div>
    </div>
</div>
</a>
	
<% 
}
%>




</div>



</body>
</html>
    