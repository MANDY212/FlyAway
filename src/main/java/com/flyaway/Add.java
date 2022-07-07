package com.flyaway;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyaway.dao.AddFlightDao;

@WebServlet("/Add")
public class Add extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flight = request.getParameter("flight");
		String fr = request.getParameter("fr");
		String t = request.getParameter("t");
		String date = request.getParameter("date");
		
		AddFlightDao dao = new AddFlightDao();
		dao.post(flight, fr, t, date);
	}
}