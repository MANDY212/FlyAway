<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	
<%
	if(session.getAttribute("username")==null)
	{
		session.setAttribute("message", "Please login first");
		response.sendRedirect("login.jsp");
	}
%>
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
            <a class="nav-link" aria-current="page" href="home.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="book.jsp">Book a Flight</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="register.jsp">Create an account</a>
          </li>
        </ul>
        <span class="navbar-text">
      	<form action="Logout">
      	<input type="submit" class="btn btn-danger"value="${username} Click to Logout">
      	</form>
    	</span>
      </div>
    </div>
  </nav>
<!-- Navigation Bar Ended -->
<!-- Jumbotron -->
  <div class="p-5 text-center bg-light">
    <h2 class="mb-3">Book a Flight</h1>
    <form action="Search">
  	<div class="form-group">
  	<h4 class="mb-3">From</h1>
  	<select class="mb-3" name="fr">
    <option value="India">India</option>
    <option value="USA">USA</option>
    <option value="UK">UK</option>
    <option value="UAE">UAE</option>
  	</select>
  	<h4 class="mb-3">To</h1>
  	<select class="mb-3" name="t">
    <option value="USA">USA</option>
    <option value="India">India</option>
    <option value="UK">UK</option>
    <option value="UAE">UAE</option>
  	</select>
  	<h4 class="mb-3">Number of Passengers</h1>
  	<select class="mb-3" name="no" id="cars">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
  	</select>
  	<h4 class="mb-3">Date</h1>
  	<input class="mb-3" type="date" id="date" name="date"><br>
  	<input type="submit" value="Search for Flights "  class="btn btn-primary">
	</form>
  </div>
<!-- Jumbotron Ended -->
</body>
</html>