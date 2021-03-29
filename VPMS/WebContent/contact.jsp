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
<style>
#map {
    height: 400px;
    width: 400px;
  }
</style>
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
	</nav>
	<div class="row mt-5">
	<div class="col">
	<font size=5 color="white" family="arail">
	<center>
	Address<br>
	S.N:112109,Near 
	Four S English Schhol,<br>
	Dehugaon,Pune.<br>
	Contact<br>
	+91 9922311512<br>
	+91 8698821852
	
	</center>
	</font>
	</div>
	<div class="col">
	<div id="map">
	
	</div>
	
	</div>
	</div>
	<script>
	function initMap(){
		var options={
				 center: {lat:18.7201, lng: 73.766},
				  zoom: 8
		}
		var map= new google.maps.Map(document.getElementById('map'),options);
		var marker=new google.maps.Marker({
			position: {lat:18.7201, lng: 73.766},
			map:map
		});
	}
	</script>
	<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBoPINwPjdzyzJaRWwkAPr2sgr0atB2Rkw&callback=initMap">
</script>
</body>
</html>

