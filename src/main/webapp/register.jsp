<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg ">
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
    <h2 class="mb-3">Register</h2>
    <form action="Register" method="post">
  	<div class="form-group">
  	<input type="text" class="form-control mb-2" id="exampleInputEmail1" placeholder="Enter Your First Name" name="fname">
    </div>
    <div class="form-group">
  	<input type="text" class="form-control mb-2" id="exampleInputEmail1" placeholder="Enter Your Last Name" name="lname">
    </div>
  	<div class="form-group">
  	<input type="text" class="form-control mb-2" id="exampleInputEmail1" placeholder="Enter Username" name="uname">
    </div>
  	<div class="form-group">
    <input type="password" class="form-control mb-2" id="exampleInputPassword1" placeholder="Password" name="pass">
  	</div>
  	<div class="form-group">
    <input type="password" class="form-control mb-2" id="exampleInputPassword1" placeholder="Repeat the Password" name="pass">
  	</div>
  	<input type="submit" value="register" class="btn btn-primary">
	</form>
  </div>
<!-- Jumbotron Ended -->
</body>
</html>