package com.tap.servlet;

import java.io.IOException;
import java.util.List;
import com.tap.daoimplementation.MenuDAOImpl;
import com.tap.model.Menu;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/menu")
public class MenuServlet extends HttpServlet {


	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("restaurantId");
		

       
		int restaurantId=Integer.parseInt(id);
		req.getSession().setAttribute("restaurantId", restaurantId);
		MenuDAOImpl impl=new MenuDAOImpl();
	           List<Menu> menuList =impl.getMenuByRestaurantId(restaurantId);
	           
	           for(Menu menu:menuList) {
	        	   System.out.println(menu);
	           }
	           req.setAttribute("menuList", menuList);
	           
	           RequestDispatcher rd =   req.getRequestDispatcher("menu.jsp");
	           rd.forward(req, resp);
	}
	
	
	
	
	
}
