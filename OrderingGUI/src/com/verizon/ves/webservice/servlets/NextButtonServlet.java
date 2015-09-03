package com.verizon.ves.webservice.servlets;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.verizon.ves.ui.Address;
import com.verizon.ves.ui.CustomerDetails;
import com.verizon.ves.ui.SwitchCaseClass;


@WebServlet("/NextButtonServlet")
public class NextButtonServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    
    public NextButtonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String cstreetname = request.getParameter("cstreetname");
			long czipcode = Long.parseLong(request.getParameter("czipcode"));
			String ccity = request.getParameter("ccity");		
			String cstate = request.getParameter("cstate");
			int cstateid = Integer.parseInt(new SwitchCaseClass().StateName(cstate));
			String ccountry = "USA";
			Address connectionaddress = new Address(cstreetname,czipcode,ccity,cstate,cstateid,ccountry);
			
			System.out.println(connectionaddress);
			
			HttpSession session=request.getSession();
			CustomerDetails customerdetails = (CustomerDetails) session.getAttribute("customerdetails");
			customerdetails.setConnectionaddress(connectionaddress);
			session.setAttribute("customerdetails", customerdetails);
			response.sendRedirect("Products.jsp");
	}

}
