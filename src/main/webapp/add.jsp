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
        </ul>
      </div>
    </div>
  </nav>
  <!-- Navigation Bar Ended -->
  <!-- Jumbotron -->
  <div class="p-5 text-center bg-light col-xs-2">
    <h1 class="mb-3">FlyAway</h1>
    <h2 class="alert alert-success mb-3">Welcome ${username} </h2>
    <h4 class="mb-3">FlyAway is a ticket-booking portal that lets people book flights on the website</h4>
    <h2 class="mb-3">Add a new Flight</h1>
    <form action="Add" method="post">
  	<div class="form-group">
  	<h4 class="mb-3">Flight</h1>
  	<div class="form-group">
    <input type="text" class="col-xs-2 mb-2" placeholder="Enter Flight Name" name="flight">
    </div>
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
  	<h4 class="mb-3">Date</h1>
  	<input class="mb-3" type="date" name="date"><br>
  	<input type="submit" value="Add a new Flight" class="btn btn-primary">
	</form>
  </div>
  <!-- Jumbotron -->
</body>
</html>