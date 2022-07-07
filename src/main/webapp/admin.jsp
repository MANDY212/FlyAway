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
  <!-- Jumbotron -->
  <div class="p-5 text-center bg-light">
    <h1 class="mb-3">FlyAway</h1>
    <h2 class="alert alert-success mb-3">Welcome ${username} </h2>
    <h4 class="mb-3">FlyAway is a ticket-booking portal that lets people book flights on the website</h4>
    <a class="btn btn-primary" href="flights.jsp" role="button">Click here to Check all the Flights</a>
  </div>
  <!-- Jumbotron -->
</body>
</html>