package com.flyaway;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flyaway.dao.ConfirmDao;

@WebServlet("/Confirm")
public class Confirm extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String From = (String) session.getAttribute("From");
		String card = request.getParameter("cname");
		ConfirmDao dao = new ConfirmDao();
		dao.confirm(From, card);
		PrintWriter out = response.getWriter();
		out.println("Ticket Confirmed From "+From+" Card Number "+card);
		
	}

}