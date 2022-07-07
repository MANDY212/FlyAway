package com.flyaway.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ConfirmDao {
	String sql = "update booking set BookingStatus=? where Fr=?";
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/flyaway";
	String username="root";
	String password="1234";
	public boolean confirm(String From,String card)
	{
		try{  
			Class.forName(driver);  
			Connection con=DriverManager.getConnection(url,username,password);  
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "Confirmed Card:"+card);
			ps.setString(2, From);
			ps.execute();
			return true;
		}
			catch(Exception e){ System.out.println(e);}  
	  
		return false;
	}
}