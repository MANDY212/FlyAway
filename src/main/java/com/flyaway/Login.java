package com.flyaway;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.LoginDao;

@WebServlet("/Login")
public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		LoginDao dao = new LoginDao();
		
//		if(dao.isAdmin(uname, pass) == true)
//		{
//			HttpSession session = request.getSession();
//			session.setAttribute("username", "Admin "+uname);
//			response.sendRedirect("admin.jsp");;
//		}
			if(dao.isAdmin(uname, pass) == false)
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("home.jsp");
		}
//		else
//		{
//			request.setAttribute("message", "Password Incorrect");
//			response.sendRedirect("login.jsp");
//		}
		
	}
}