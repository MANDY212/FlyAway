<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
<title>FlyAway</title>
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light ">
    <div class="container-fluid">
      <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarExample01"
        aria-controls="navbarExample01"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="admin.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="add.jsp">Add a new Flight</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Login</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="update.jsp">Update your password</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="flights.jsp">Flights</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="bookings.jsp">All Bookings</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- Navigation Bar Ended -->
  <h4 class="text-center">Flights Details</h4>
<%
try
{
	//establish a connection with my sql database
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","root","MySQL@4889");
	String sql = "select * from booking";
	PreparedStatement stmt = con.prepareStatement(sql);
	ResultSet rs = stmt.executeQuery();
	if(rs.next()==false)
	{
		out.println("No Records Found");
	}
	else
	{%>
	<div class="container-fluid text-center">
	<table style="border: 1px solid black; text-align:center; align-self: center;" class="table">
	<tr style="border: 1px solid black;"><th style="border: 1px solid black;">Booking Id</th><th style="border: 1px solid black;">Customer Name</th><th style="border: 1px solid black;">From</th><th style="border: 1px solid black;">To</th><th style="border: 1px solid black;">Date</th></tr> <%
	do
	{ %>
	<tr style="border: 1px solid black;"><td style="border: 1px solid black;"><%= rs.getString(1) %></td><td style="border: 1px solid black;"><%= rs.getString(3) %></td><td style="border: 1px solid black;"><%= rs.getString(5) %></td><td style="border: 1px solid black;"><%= rs.getString(6) %></td><td style="border: 1px solid black;"><%= rs.getString(4) %></td></tr><% 
	}while(rs.next());%>
	
	
	</table>
	</div>
	<%
}
	}
catch(Exception e)
{
	e.getStackTrace();
}
%>
  
</body>
</html>