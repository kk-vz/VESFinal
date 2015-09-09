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
import com.verizon.ves.ui.ContractDetails;
import com.verizon.ves.ui.CustomerDetails;
import com.verizon.ves.ui.SwitchCaseClass;


@WebServlet("/NextButtonServlet")
public class NextButtonServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    
    public NextButtonServlet() {
        super();
        
    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
			System.out.println("In NextButtonServlet...");
			
			HttpSession session=request.getSession();
			
			CustomerDetails customerdetails =(CustomerDetails) session.getAttribute("customerdetails");
			
			String cstreetname = request.getParameter("cstreetname");
			long czipcode = Long.parseLong(request.getParameter("czipcode"));
			String ccity = request.getParameter("ccity");		
			String cstate = request.getParameter("cstate");
			int cstateid = Integer.parseInt(new SwitchCaseClass().StateName(cstate));
			String ccountry = request.getParameter("ccountry");
			Address connectionaddress = new Address(cstreetname,czipcode,ccity,cstate,cstateid,ccountry);
			session.setAttribute("connectionaddress", connectionaddress);
			System.out.println(connectionaddress);
			
			String customertype =(String) session.getAttribute("customertype");
			
		if (customertype.equals("new")) {
			int customerid = 0;
			String fname = request.getParameter("fname");
			String lname = "null";
			String email = request.getParameter("email");
			String dateofbirth = "null";
			long contactnumber = Long.parseLong(request.getParameter("contactnumber"));

			String bstreetname = request.getParameter("bstreetname");
			long bzipcode = Long.parseLong(request.getParameter("bzipcode"));
			String bcity = request.getParameter("bcity");
			String bstate = request.getParameter("bstate");
			int bstateid = Integer.parseInt(new SwitchCaseClass().StateName(bstate));
			String bcountry = request.getParameter("bcountry");
			Address billingaddress = new Address(bstreetname, bzipcode, bcity, bstate, bstateid, bcountry);
			session.setAttribute("billingaddress", billingaddress);
			System.out.println(billingaddress);
			
			customerdetails = new CustomerDetails(customertype,customerid, fname, lname, billingaddress, connectionaddress, email,contactnumber,dateofbirth);
			session.setAttribute("customerdetails", customerdetails);
			
			System.out.println(customerdetails);
		}
		
		if (customertype.equals("registered")) {
			System.out.println("registered customer...");
			
			Address billingaddress = customerdetails.getBillingaddress();
			session.setAttribute("billingaddress", billingaddress);
			
			customerdetails.setConnectionaddress(connectionaddress);
			session.setAttribute("customerdetails", customerdetails);
			
			System.out.println(customerdetails);
		}
		
		    
			int contractid = 0;
			String modeltype = request.getParameter("modeltype");
			String classofservice = request.getParameter("classofservice");
			String fromdate =request.getParameter("fromdate");
			String todate = request.getParameter("todate");
			double discountpercentage = Long.parseLong(request.getParameter("discountpercentage"));
			String change = "null";
			
			ContractDetails[] contractdetails = new ContractDetails[1];
			contractdetails[0] = new ContractDetails(contractid, modeltype, classofservice, fromdate, todate, (int) discountpercentage, change);
			
			session.setAttribute("contractdetails", contractdetails);
			
			System.out.println(contractdetails);
			
			session.setAttribute("discount", discountpercentage);
			response.sendRedirect("Products.jsp");
	}

}
