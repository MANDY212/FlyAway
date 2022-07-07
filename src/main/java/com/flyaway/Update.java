package com.flyaway;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyaway.dao.UpdatePasswordDao;

@WebServlet("/Update")
public class Update extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		PrintWriter out = response.getWriter();
		UpdatePasswordDao dao = new UpdatePasswordDao();
		if(dao.post(uname, pass))
		{
			
			out.print("Password Changed Successfully");
		}
		else 
		{
			out.print("Please enter correct username");
		}
		
	}

}