package com.flyaway.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDao 
{
	String sql1 = "select * from login where uname=? and pass=?";
	String sql2 = "select * from login where uname=? and pass=? and isadmin=?";
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/flyaway";
	String username="root";
	String password="1234";
	public boolean check(String uname, String pass)
	{
		try{  
			Class.forName(driver);  
			Connection con=DriverManager.getConnection(url,username,password);  
			PreparedStatement ps = con.prepareStatement(sql1);
			ps.setString(1, uname);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				return true;
			}
			con.close();
		}
			catch(Exception e){ System.out.println(e);}  
	  
		return false;
	}
	public boolean isAdmin(String uname, String pass)
	{
		try{  
			Class.forName(driver);  
			Connection con=DriverManager.getConnection(url,username,password);  
			PreparedStatement ps = con.prepareStatement(sql2);
			ps.setString(1, uname);
			ps.setString(2, pass);
			ps.setString(3, "Yes");
			ResultSet rs = ps.executeQuery();
			if(rs.next());
			{
				return true;
			}
			}
			catch(Exception e)
			{ 
				System.out.println(e);
			} 
		return false;
	}
}