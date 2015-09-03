package com.verizon.ves.dao.servlets;

import java.io.IOException;



import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.verizon.ves.dao.ResetPasswordDAO;


@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ResetPasswordServlet() {
        super();
       
    }


    @Override
   	public void init(ServletConfig config) throws ServletException {
   		// TODO Auto-generated method stub
   		super.init(config);
   		
   	}


  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
  	{
  		String newPassword=request.getParameter("newPassword");
  	
  		HttpSession session = request.getSession();
  		String emp_id=(String)session.getAttribute("emp_id");

		boolean status=new ResetPasswordDAO().reset(newPassword, emp_id,0);
        
		if(status)
		{
			response.sendRedirect("home.jsp");
		}
		else
		{	
			response.sendRedirect("error.jsp");
		}
  		
  	}

}
