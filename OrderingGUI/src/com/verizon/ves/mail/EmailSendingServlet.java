package com.verizon.ves.mail;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.verizon.ves.dao.ResetPasswordDAO;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 * 
 * @author www.codejava.net
 * 
 */
@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String host;
	private String port;
	private String user;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// reads form fields
		String recipient = request.getParameter("email");
		String subject = "URGENT:Reset Password";
		
		final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		Random rnd = new Random();

		
		   StringBuilder sb = new StringBuilder( 8 );
		   for( int i = 0; i < 8; i++ ) 
		      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
		   
		   String password = sb.toString();
			
		   String content = "The temporary password for logging on is "+password+".You will be asked to reset password on logging in using this password.";
		   String emp_id=request.getParameter("emp_id");
		   boolean reset_status = new ResetPasswordDAO().reset(password,emp_id,1);
		   
		   String resultMessage = "";
		   
		   if(reset_status)
		   {
			   try {
					EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
							content);
					response.sendRedirect("index.jsp");
					resultMessage = "The e-mail was sent successfully";
				} catch (Exception ex) {
					ex.printStackTrace();
					resultMessage = "There were an error: " + ex.getMessage();
				} finally {
					System.out.println("Message "+ resultMessage);
					
				}
		   }
		
	}
}