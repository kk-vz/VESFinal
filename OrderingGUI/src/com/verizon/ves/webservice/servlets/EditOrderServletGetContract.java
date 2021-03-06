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
import com.verizon.ves.dao.EnterpriseOrderDAO;
import com.verizon.ves.restclient.OrderManagementRestClient;
import com.verizon.ves.ui.ContractDetails;
import com.verizon.ves.ui.ContractHistory;
import com.verizon.ves.ui.EnterpriseOrder;
import com.verizon.ves.ui.ProfilePull;


@WebServlet("/EditOrderServletGetContract")
public class EditOrderServletGetContract extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String URL = "http://localhost:8080/OrderManagement/rest/om/profilePull/email/";  

    public EditOrderServletGetContract() {
        super();

    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session=request.getSession();
//		String contractid = request.getParameter("contractid");
//		String contractidJson = "{\"contractid\":\""+contractid+"\"}";
//		String outputJson = new OrderManagementRestClient().callServicePOST(contractidJson, editOrderGetURL);
		String email = (String) session.getAttribute("email");
		System.out.println(email);
		String profilePullURL = URL+email;
		String profilePullJson = new OrderManagementRestClient().callServiceGET(profilePullURL);
		
		System.out.println(profilePullJson);
		ProfilePull profile = new Gson().fromJson(profilePullJson, ProfilePull.class);
		session.setAttribute("profile", profile);
		ContractHistory[] contractdetails = profile.getContractHistory();
		String contractJson ="{\"contractdetails\":"+ new Gson().toJson(contractdetails) +"}";
		System.out.println("Contract JSON: "+contractJson);

		if(profilePullJson.equals("null"))
		{
			// No Contracts to display or contracts expired
			session.setAttribute("contractidvalidity", "invalid");
			
		}
		else
		{
			session.setAttribute("contractidvalidity", "valid");
			PrintWriter out = response.getWriter();
		    out.println( contractJson );
		    out.flush();
			
		}

	}

}
