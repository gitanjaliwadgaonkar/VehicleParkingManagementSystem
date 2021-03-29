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

</head>
<body  style="background-image: url(images/vehicle5.jpg); background-size: 1350px;">							
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
          <i class="fas fa-user fa-lg" style="color:black"></i><font color="black">Welcome,<%=session.getAttribute("uname")%></font>
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
	<%
	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>

	<div class="header-text"><center><font size=30 family="cursive" color="white">Manage Vehicle</font></center></div>
	
	
			<div class="card-body">
							<table class="table  table-bordered" style="color:white">
								<thead>
									<tr>
										<th>S.NO</th>
										<th>Parking Number</th>
										<th>Owner Name</th>
										<th>Vehicle Reg Number</th>
										<th>Action</th>
									</tr>
								</thead>
								<%
										String status = null;
										Connection con = DatabaseConnection.getConnection();
										Statement statement = con.createStatement();
										ResultSet resultset = statement.executeQuery("select * from  tblvehicle where OwnerName='" + session.getAttribute("fullName") + "'");
										while (resultset.next()) {
								%>
								<tr>
									<td><%=resultset.getInt(1)%></td>
									<td><%=resultset.getString(2)%></td>
									<td><%=resultset.getString(6)%></td>
									<td><%=resultset.getString(5)%></td>
									<td><a
										href="view-user-incomingview-details.jsp?viewid=<%=resultset.getInt(1)%>&parkingNo=<%=resultset.getString(2)%>"><font color="white"><strong>View</strong></font></a>
										| <a href="print.jsp?vid=<%=resultset.getInt(1)%>"
										style="cursor: pointer" target="_blank"><font color="white"><strong>Print</strong></font></a></td>
								</tr>
								<%
									}
								%>
							</table>

						</div>
						


<%
		} else {
			response.sendRedirect("user-login.jsp");
		}
	%>

</body>
</html>

