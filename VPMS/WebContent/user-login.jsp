<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html class="no-js" lang="">
<head>
<title>Park Capsule</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/f38e05699a.js" crossorigin="anonymous"></script>
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
<link href="book_your_place.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-light"  style="background-color:#FF8C00">
	 <div class="container-fluid">
		<a class="navbar-brand mb-0 h1" href="index.jsp">
		 <img src="images/logo16.png" alt="" width="70" height="50">Park Capsule</a>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"> <i class="fas fa-home fa-lg" style="color:black"></i>Home <span class="sr-only">(current)</span></a>
      </li>
		<li>
		<li class="nav-item">
        <a class="nav-link" href="about.jsp"><font color="black">About Us</font></a>
      </li>
		<li class="nav-item">
        <a class="nav-link" href="contact.jsp"><font color="black">Contact Us</font></a>
      </li>
		<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" style="color:black" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user fa-lg" style="color:black"></i><font color="black">Login</font>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
          <a class="dropdown-item" href="user-login.jsp">User</a>
          <a class="dropdown-item" href="admin-login.jsp">Admin</a>
        </div>
    	</li>
      </ul>
      </div>
      </div>
	</nav>
				<div class="login-form">
					<p>
						<%
							String message = (String) session.getAttribute("message");
							if (message != null) {
								session.removeAttribute("message");
						%>
					
					<h6>
						<center>Invalid credential, try again.</center>
					</h6>
						<%
							}
						%>
					</p>
					<form action="UserLogin" method="post">
					<div class="form-box">
					<div class="header-text">
					Login
					</div>
					<input placeholder="Username" type="text" name="username" required="true" > 
					<input placeholder="Your Password" type="password" name="password" id=password required="true"> 
					<input id="terms" type="checkbox"  onclick="myFunction()">
					 <label for="terms"></label><span>Show Password</span>
					  <button  name="login">login</button>
					  <a href="user-register.jsp"><center><font color="white">Create an account</font></center></a>
					</div>
					</form>
				</div>
				<script>
function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
</body>
</html>
