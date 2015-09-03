package com.verizon.ves.dao.servlets;

import java.io.IOException;



import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.verizon.ves.dao.SignupDAO;
import com.verizon.ves.mail.EmailUtility;


@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String host;
	private String port;
	private String user;
	private String pass;
 
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


    @Override
   	public void init(ServletConfig config) throws ServletException {
   		// TODO Auto-generated method stub
   		super.init(config);
   		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
   	}


  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
  	{
  		
  		String ename=request.getParameter("ename");
  		String email=request.getParameter("email");
  		String password=request.getParameter("pwd1");
  		System.out.println(ename+" "+email+" "+password);
  		int eid=new SignupDAO().signup(ename, password, email);
  		
  		String subject = "New Employee Registeration";
  		String content = "Dear " +ename+",\n Please find your details below.\n\n Name: "+ename+
  				          "\n Employee ID: "+eid+"\n Email: "+email;
  				
  		
  		String resultMessage = "";
  		          
  		
        
		if(eid !=-1 )
		{	
			try {
				EmailUtility.sendEmail(host, port, user, pass, email, subject,
						content);
				
				resultMessage = "The e-mail was sent successfully";
			} catch (Exception ex) {
				ex.printStackTrace();
				resultMessage = "There were an error: " + ex.getMessage();
			} finally {
				System.out.println("Message "+ resultMessage);
				
			}
			
			response.sendRedirect("index.jsp");
		}
		else
		{	
			response.sendRedirect("error.jsp");
		}
  		
  	}

}
