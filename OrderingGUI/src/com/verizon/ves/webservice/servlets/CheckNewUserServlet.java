package com.verizon.ves.webservice.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.verizon.ves.restclient.OrderManagementRestClient;
import com.verizon.ves.ui.CustomerDetails;
import com.verizon.ves.ui.ProfilePull;


@WebServlet("/CheckNewUserServlet")
public class CheckNewUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String URL = "http://192.168.1.19:8080/OrderManagement/rest/om/profilePull/email/";  
   
    public CheckNewUserServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("In CheckNewUserServlet...");
		String email = request.getParameter("email");  //"lol@gmail.com";
		HttpSession session=request.getSession();
		
		System.out.println("email: "+email);
		
		String profilePullURL = URL+email;
		String outputJson = new OrderManagementRestClient().callServiceGET(profilePullURL);
		
				
		System.out.println(outputJson);
		
		
		if(outputJson == null)
		{
			session.setAttribute("customertype", "new");
			
			CustomerDetails customerdetails = new CustomerDetails();
			System.out.println(customerdetails);
			customerdetails.setCustomertype("new");
			
			session.setAttribute("customerdetails", customerdetails);
			
			response.sendRedirect("home.jsp");
			
		}
		else
		{
			session.setAttribute("customertype", "registered");
			
			ProfilePull profile = new Gson().fromJson(outputJson, ProfilePull.class); 
			System.out.println(profile);
			CustomerDetails customerdetails = profile.getCustomerdetails();
			customerdetails.setCustomertype("registered");
			System.out.println(customerdetails);
						
			session.setAttribute("customerdetails", customerdetails);
			
			response.sendRedirect("home.jsp");
		}
		
	}

}
