package com.verizon.ves.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.verizon.ves.dao.servlets.LocalDBConnectionPool;

public class EnterpriseOrderDAO {
	
	Connection connection = new LocalDBConnectionPool().getConnection();
	
	public boolean NewOrder(String orderid,String contractid,String customerid,String email){
				 
		try {
			
			PreparedStatement ps=connection.prepareStatement("insert into enterprise_order values(?,?,?,?)");
			ps.setString(1, orderid);
			ps.setString(2, contractid);
			ps.setString(2, customerid);
			ps.setString(4, email);
		
			int rows= ps.executeUpdate();
		
			if(rows > 0)
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

	
	public boolean EditOrder(String orderid,String contractid,String customerid){
	
		boolean status = false;
		try {
			
			PreparedStatement ps=connection.prepareStatement("select * from enterprise_order where customerid=? ");
		
			ps.setString(1, customerid);
			String email = null;
		
			ResultSet rs= ps.executeQuery();
			
			
			if(rs.next())
				{ email = rs.getString(4);
				status = NewOrder(orderid, contractid, customerid, email);
				}
			else
				{ 
				  System.out.println("no email found");
				  status = false;
				}
			
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return status;
		
		
	}


}
