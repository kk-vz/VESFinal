package com.verizon.ves.dao.servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.verizon.ves.dao.ForgotPasswordDAO;

@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
     public ForgotPasswordServlet()
     {
        super();
       
     }
     
     @Override
 	public void init(ServletConfig config) throws ServletException {
 		// TODO Auto-generated method stub
 		super.init(config);
 	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String emp_id=request.getParameter("emp_id");
		String emp_name=request.getParameter("emp_name");
		String email = request.getParameter("email");
		HttpSession session = request.getSession();
		session.setAttribute("emp_id",emp_id);
		session.setAttribute("emp_name",emp_name);
		session.setAttribute("email",email);
		boolean status =new ForgotPasswordDAO().forgot(emp_id, emp_name, email);
		if(status)
		{	
			ServletContext context = this.getServletContext();
			RequestDispatcher dispatcher = context.getRequestDispatcher("/EmailSendingServlet");
			dispatcher.forward(request, response);
		}
		else
		{	
			response.sendRedirect("error.jsp");
		}
		
	}

}
