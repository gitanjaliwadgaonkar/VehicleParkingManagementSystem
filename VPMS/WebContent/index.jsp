<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>

<!doctype html>
<html class="no-js" lang="">
<head>
<title>Park Capsule</title>
<style>
#rcorners1{
  border-radius: 25px;
  background: orange;
  padding: 20px; 
  width: 100px;
  height: 100px;  
  }
  
  </style>
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
<link href="images.css" rel="stylesheet">
</head>
<body style="background-image: url(images/vehicle5.jpg); background-size: 1350px;">
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
	<%
	int slot_capacity = 0;
	Connection con = DatabaseConnection.getConnection();
	Statement statement = con.createStatement();
	ResultSet resultset = statement.executeQuery("select * from tblParkingSeatCapacity");
	while (resultset.next()) {
		slot_capacity = resultset.getInt(1);
	}
%>

<div class="row">
  <div class="column">
    <img src="images/two1.jpg" style="width:100%">
  </div>
  <div class="column">
    <img src="images/bicycle.jpg" style="width:100%"">
  </div>
  <div class="column">
    <img src="images/four1.jpg" style="width:100% ">
  </div>
  <div class="column">
    <img src="images/truck1.png" style="width:100%">
  </div>
</div>
<%
	int count = 0;
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select count(*) from tblvehicle where status=''");
	while (rs.next()) {
		count = rs.getInt(1);
	}
%>
<div class="row" style="padding-top:10%">
<div class="col" style="padding-left:40%">
<p id="rcorners1">
<font size=20 family="arial">
<b><%=slot_capacity %></b></font><br>
</p>
Total Parking Space
</div>
<div class="col" style="padding-right:35%" >
<p id="rcorners1">
<font size=20 family="arial">
<b>
<%=slot_capacity-count %></b></font><br>
</p>
Available Parking Space
</div>
</div>
</body>
</html>

