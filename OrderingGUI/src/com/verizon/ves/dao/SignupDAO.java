package com.verizon.ves.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.verizon.ves.dao.servlets.LocalDBConnectionPool;

public class SignupDAO {
	
	Connection connection = new LocalDBConnectionPool().getConnection();
	
	public int signup(String ename,String password,String email){
	
		try {
			PreparedStatement ps = connection.prepareStatement("insert into sales_employee values(sales_employee_seq.nextval,?,?,?,?)");
			ps.setString(1, ename);
			ps.setString(2, password);
			ps.setString(3, email);
			ps.setInt(4, 0);
			
			int state = ps.executeUpdate();

			if (state > 0) 
			  {
				ps = connection.prepareStatement("select * from sales_employee where emp_name=? and password=? and email=?");
				ps.setString(1, ename);
				ps.setString(2, password);
				ps.setString(3, email);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				 return rs.getInt(1);
				else
				 return -1;
				
			  }
			else
			  return -1;

		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
  	
		
	}
}
