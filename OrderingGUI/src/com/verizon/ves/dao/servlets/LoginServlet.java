package com.verizon.ves.dao.servlets;

import java.io.IOException;




import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.verizon.ves.dao.LoginDAO;
import com.verizon.ves.ui.CustomerDetails;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public LoginServlet() {
        
    }

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		HttpSession session = request.getSession();
		session.setAttribute("userName",userName);
		session.setAttribute("password",password);
		
		
		
		int status=new LoginDAO().checkLogin(userName, password);
        
		if(status == 0)
		{	
			CustomerDetails customerdetails = new CustomerDetails();
			System.out.println(customerdetails);
			customerdetails.setCustomertype("new");
			session.setAttribute("customerdetails", customerdetails);
			response.sendRedirect("home.jsp");
		}
		else if(status == 1)
		{
			response.sendRedirect("ResetPassword.jsp");
		}
		else
		{	
			response.sendRedirect("error.jsp");
		}
	}

}
