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
      </div>
    </div>
  </nav>
  <!-- Navigation Bar Ended -->
  <!-- Jumbotron -->
  <div class="p-5 text-center bg-light">
    <h1 class="mb-3">Payment Gateway</h1>
  	<form action="Confirm" method="post">
  	<div class="form-group">
  	<input type="text" class="form-control mb-2" id="exampleInputEmail1" placeholder="Card number" name="cname">
    </div>
    <input type="submit" class="btn btn-primary" href="bookingdetails.jsp" role="button" value="Click here to Confirm the Ticket">
  	</form>
  </div>
  <!-- Jumbotron -->
  <%
  		session.setAttribute("From", session.getAttribute("From"));
  %>
</body>
</html>l>