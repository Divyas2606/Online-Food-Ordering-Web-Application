<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List,com.tap.model.Menu" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Restaurant Menu</title>
     <link rel="stylesheet" href="menu.css"/>
</head>
<body>

<h1>Restaurant Menu</h1>

<div class="menu-container">

    <!-- Menu Item 1 -->
    
    
    
    
    <% List<Menu> menuList= (List<Menu>)request.getAttribute("menuList");
    
    for(Menu menu:menuList) {
    	%>
    	<div class="menu-card">
    	<img src="<%= menu.getImageurl()  %>" alt="image not found">
        <div class="menu-details">
            <h3><%=menu.getMenuname() %></h3>
            <p class="price">₹<%=menu.getPrice() %></p>
            <p class="available"><%= menu.getIsavailable() %></p>
            <p><%=menu.getDescription() %>.</p>
            <p>Menu ID:<%= menu.getMenuid() %>|
            Restaurant ID:<%= menu.getRestaurantid() %> </p>
            
            
            <form action="cart" mathod="get">
            <input type="hidden" name="itemId" value="<%= menu.getMenuid() %>">
            <input type="hidden" name="restaurantId" value="<%= menu.getRestaurantid() %>">
            <input type="hidden" name="quantity" value= "1">
            <input type="hidden" name="action" value="add">
            <input type="submit" value ="Add to Cart">
            </form>
            
            
            
            
            
            
            
            
            
            
          
        </div>
    </div>
    	
 <%
    }
    
    
    
    
    %>
    
    
    
    
    
    

    
</div>

</body>
</html>

    