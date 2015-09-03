package com.verizon.ves.dao.servlets;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LocalDBConnectionPool1 {
	
	public Connection getConnection()
	{	
		Connection con=null;
		try {
			InitialContext initialContext = new InitialContext();
			Context context=(Context)initialContext.lookup("java:comp/env");
			DataSource ds=(DataSource)context.lookup("connpool");
			con=ds.getConnection();
			return con;
			
		} catch (Exception e) {
			
			e.printStackTrace();
			return con;
		}
		
	
	}

}
