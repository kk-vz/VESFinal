package com.verizon.ves.webservice.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.verizon.ves.restclient.OrderManagementRestClient;
import com.verizon.ves.ui.OrderHistory;


@WebServlet("/OrderStatusServlet")
public class OrderStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String orderStatusURL = "http://192.168.1.23:8080/OMTest/rest/profilepull/email";
   
   
    public OrderStatusServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderid = request.getParameter("orderid");
		HttpSession session=request.getSession();
		
		String orderidJson = "{\"orderid\":\""+orderid+"\"}";
		String outputJson = new OrderManagementRestClient().callServicePOST(orderidJson, orderStatusURL);
		
		
		System.out.println(outputJson);
		
		
		if(outputJson.equals("null"))
		{
			session.setAttribute("querying", "failed");
			
		}
		else
		{
			// set session attribute for order status doughnut
			session.setAttribute("querying", "success");
			Gson gson = new Gson();
			OrderHistory orderhistory = gson.fromJson(outputJson, OrderHistory.class);
			String orderstatus = "out provision";//orderhistory.getOrderstatus();
			//session.setAttribute("orderstatus", orderstatus);
			String status = "";
			switch(orderstatus){
			case "new":
				status = "0";
				session.setAttribute("status", "Order Placed Successfully"); break;
			case "in provision":
				status = "1";
				session.setAttribute("status", "In provision"); break;
			case "out provision":
				status = "2";
				session.setAttribute("status", "Out Provision"); break;
			case "completed":
				status = "3";
				session.setAttribute("status", "Order Completed"); break;
			case "cancelled":
				status = "4";
				session.setAttribute("status", "Order Cancelled"); break;	
			}
		    PrintWriter out = response.getWriter();
		    out.println( status );
		    out.flush();
			
//			session.setAttribute("orderstatus", 2);
//			response.sendRedirect("chart-chartjs.jsp");
		}

	}

}