package com.flyaway.dao;

import java.net.http.HttpRequest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class BookingDao {
	String sql = "INSERT INTO Booking (CustomerName, TravelDate , Fr , T) VALUES (?,?,?,?)";
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/flyaway";
	String username="root";
	String password="1234";
	public boolean book(String uname , String date, String From, String To )
	{
		try{  
			Class.forName(driver);  
			Connection con=DriverManager.getConnection(url,username,password);  
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, date);
			ps.setString(3, From);
			ps.setString(4, To);
			ps.execute();
			con.close();
		}
			catch(Exception e){ System.out.println(e);}  
	  
		return false;
	}
}