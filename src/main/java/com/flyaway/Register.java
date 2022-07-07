package com.flyaway;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.RegistrationDao;


@WebServlet("/Register")
public class Register extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		RegistrationDao dao = new RegistrationDao();
		
		if(dao.post(fname, lname, uname, pass) == true)
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("home.jsp");
		}
	}

}
