package com.verizon.ves.mail;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmailAttachmentSendingServlet")
public class EmailAttachmentSendingServlet extends HttpServlet {

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

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// reads form fields
		String recipient = "krishnakumar6039@gmail.com";
		String subject = "contract";
		String content = "Pl find contract in attachments";
		String[] attachFiles = new String[2];
		attachFiles[0] = "C:\\Users\\Administrator\\Downloads\\Contracts\\1.pdf";
		//attachFiles[1] = "C:\\Users\\Administrator\\Downloads\\Contracts\\contract-VES.pdf";


		String resultMessage = "";

		try {
			EmailAttachmentSender.sendEmailWithAttachments(host, port, user, pass, recipient, subject, content, attachFiles);
			resultMessage = "The e-mail was sent successfully";
		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "There were an error: " + ex.getMessage();
		} finally {
			request.setAttribute("Message", resultMessage);
			getServletContext().getRequestDispatcher("/home.jsp").forward(
					request, response);
		}
	}
}