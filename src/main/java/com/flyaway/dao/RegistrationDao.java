package com.flyaway.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegistrationDao {
	
	String sql = "INSERT INTO login (fname, lname, uname, pass, isadmin) VALUES (?,?,?,?,0)";
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/flyaway";
	String username="root";
	String password="1234";
	public boolean post(String fname, String lname, String uname, String pass)
	{
		try{  
			Class.forName(driver);  
			Connection con=DriverManager.getConnection(url,username,password);  
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, uname);
			ps.setString(4, pass);
			ps.executeUpdate();
			return true;
		}
			catch(Exception e){ System.out.println(e);}  
	  
		return false;
	}
}