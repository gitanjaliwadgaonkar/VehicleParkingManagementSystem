<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
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
<link href="add-user-vehicle.css" rel="stylesheet">
</head>
<body>							
	<nav class="navbar navbar-expand-sm navbar-light"  style="background-color:#FF8C00">
	 <div class="container-fluid">
	 

<p style="font-size: 16px; color: red" align="center">
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
			
			int count_total_vehentries = 0;
			Connection con = DatabaseConnection.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select uname,password from tbluser where uname='" + session.getAttribute("uname") + "'");
			while (rs.next()) {
		
	%>
</p>
								
	
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
          <i class="fas fa-user fa-lg" style="color:black"></i><font color="black">Welcome,<%=rs.getString(1)%></font>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
          <a class="dropdown-item" href="user-profile.jsp">My Profile</a>
          <a class="dropdown-item" href="change-user-password.jsp">Change Password</a>
          <a class="dropdown-item" href="user-managingvehicle.jsp">Vehicle Status & Report</a>
          <a class="dropdown-item" href="index.jsp">Logout</a>
        </div>
    	</li>
      </ul>
      </div>
	</nav>
	

	<div class="header-text"><center>Change Password</center></div>
	
	<form action="UserPasswordChange" method="post">
			
	<div class="form-box">
	<p>
						<%
							String message = (String) session.getAttribute("message");
							if (message != null) {
								session.removeAttribute("message");
						%>
					
					<h6>
						<center>Try agian,Password did not match</center>
					</h6>
						<%
							}
						%>
					</p>
	Current Password
	<input type="text" name="cpassword" class=" form-control" readonly required="true" value="<%=rs.getString(2)%>">
	New Password
	<input type="password" name="password" class="form-control" value="" required="true">
	Confirm Password
	<input type="password" name="confpass" class="form-control" value="" required="true">	
	<button type="submit" class="btn btn-primary btn-sm" name="submit">Change Password</button>					
	</div>
	<%
		}
	%>	
	</form>
	<%
		} else {
			response.sendRedirect("user-login.jsp");
		}
	%>
</body>
</html>

