package com.verizon.ves.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.verizon.ves.dao.servlets.LocalDBConnectionPool;

public class ResetPasswordDAO {
	
	Connection connection = new LocalDBConnectionPool().getConnection();  
	public boolean reset(String newPassword,String emp_id,int reset_factor){
		
		try {
			PreparedStatement ps = connection.prepareStatement("update sales_employee set password=?,reset_factor=? where emp_id=? ");
			ps.setString(1, newPassword);
			ps.setInt(2, reset_factor);
			ps.setString(3, emp_id);

			ResultSet rs = ps.executeQuery();

			if (rs.next())
				return true;
			else
				return false;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;

		}
	}

}
