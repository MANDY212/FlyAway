package com.flyaway.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UpdatePasswordDao 
{
	String sql = "update login set pass=? where uname=?";
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/flyaway";
	String username="root";
	String password="1234";
	public boolean post(String uname, String pass)
	{
		try{  
			Class.forName(driver);  
			Connection con=DriverManager.getConnection(url,username,password);  
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pass);
			ps.setString(2, uname);
			ps.execute();
			return true;
		}
			catch(Exception e){ System.out.println(e);}  
	  
		return false;
	}
}