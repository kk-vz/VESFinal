package com.verizon.ves.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.verizon.ves.dao.servlets.LocalDBConnectionPool;

public class ForgotPasswordDAO {
	
	Connection connection = new LocalDBConnectionPool().getConnection();
	
	public boolean forgot(String emp_id,String emp_name,String email){
		 
		try {
			PreparedStatement ps=connection.prepareStatement("select * from sales_employee where emp_id=? and emp_name=? and email=?");
			ps.setString(1, emp_id);
			ps.setString(2, emp_name);
			ps.setString(3, email);
		
			ResultSet rs= ps.executeQuery();
		
			if(rs.next())
				return true;
			else
				return false;
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			return false;
		}
	}

}
