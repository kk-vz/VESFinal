package com.verizon.ves.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.verizon.ves.dao.servlets.LocalDBConnectionPool;

public class LoginDAO {
	Connection connection = new LocalDBConnectionPool().getConnection();
	
	public int checkLogin(String userName, String password) {
		try {
			PreparedStatement ps=connection.prepareStatement("select * from sales_employee where emp_name=? and password=?");
			ps.setString(1, userName);
			ps.setString(2, password);
		
			ResultSet rs= ps.executeQuery();
		
			if(rs.next())
				return rs.getInt("reset_factor");							
			else
				return -1;
			
		} 
	catch (SQLException e) {
		e.printStackTrace();
		return -1;
	}
		
	}
}
