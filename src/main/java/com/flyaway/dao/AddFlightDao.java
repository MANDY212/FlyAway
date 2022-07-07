package com.flyaway.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AddFlightDao {
	
	String sql = "INSERT INTO flights (flight, fr, t, date) VALUES (?,?,?,?)";
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/flyaway";
	String username="root";
	String password="1234";
	public boolean post(String flight, String fr, String t, String date)
	{
		try{  
			Class.forName(driver);  
			Connection con=DriverManager.getConnection(url,username,password);  
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, flight);
			ps.setString(2, fr);
			ps.setString(3, t);
			ps.setString(4, date);
			ps.executeUpdate();
			return true;
		}
			catch(Exception e){ System.out.println(e);}  
	  
		return false;
	}
}