package com.verizon.ves.webservice.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.verizon.ves.restclient.PCatRestClient;


public class CallPCatServiceCatalog extends HttpServlet {
	 private static final long serialVersionUID = 1L;
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String st = request.getParameter("pstate");
		String service = request.getParameter("pService");
		String p2 = request.getParameter("p2");
		String p3 = request.getParameter("p3");
		System.out.println("SERVICE="+service);
		
		String str = st+"&" +service ;
		if ( p2 != null ) str +=  "&" + p2;
		if ( p3 != null ) str +=  "&" + p3;
		
		System.out.println(str);

		String productList = null;
	    
	    productList = new PCatRestClient().callPCatURL(str);
	    System.out.println( "productList "+ productList);
	    
	    PrintWriter out = response.getWriter();
	    out.println( productList );
	    out.flush();
	        
	}

}
