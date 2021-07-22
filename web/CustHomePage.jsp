<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Homepage</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
#main
{
height:100vh;background-image:url();
}
li
{
width:120px;
}
#ulhover li:hover{
background-color:#ffc107;
}
#ulhover li ul li{
background-color:#ffc107;
}
#brandhover:hover {
color:#ffc107;
}
input[type=text],input[type=password]
{  width:250px;                                                                                }
input[type=submit]
{         width:200px;                                     }
#form
{     width:500px; border-radius: 20px 90px;     } 

</style>
</head>
<body>
	
	<%
	
	
	%>

<div class="container-fluid" id="main">
	<nav class="navbar navbar-expand-xl navbar-dark bg-dark ">
		<div class="container">
				<a href="bootstrap.jsp" class="navbar-brand"  id="brandhover">SK HOTELS</a>
					<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarid">
						<span class="navbar-toggler-icon"></span>
						</button>
							<div class="collapse navbar-collapse" id="navbarid">
									<ul class="navbar-nav text-center"  id="ulhover">
										<li class="nav-item"><a class="nav-link" href="bootstrap.jsp">HOME</a></li>
										<li class="nav-item"><a class="nav-link" href="Gallery.jsp">GALLERY</a></li>
										<li class="nav-item" ><a class="nav-link" href="">HOTELS</a></li>
										<li class="nav-item" ><a class="nav-link" href="AboutUs">ABOUTUS</a></li>
										<li class="nav-item"><a class="nav-link" href="">CONTACTUS</a></li>
										<li class="nav-item dropdown" ><a class="nav-link dropdown-toggle"data-toggle="dropdown" href="">LOGIN</a>
											<ul class="dropdown-menu">
												<li><a href="CustLog.jsp" class="dropdown-item"> CUSTOMER</a></li>
									<!-- 			<li><a href="ManLog.jsp" class="dropdown-item">MANAGER</a></li>
												<li><a href="EmpLog.jsp" class="dropdown-item">EMPLOYEE</a></li> -->
												<li><a href="AdminLog.jsp" class="dropdown-item">ADMIN</a></li>
											</ul>
										</li>	
									    <li class="nav-item"><a class="nav-link" href="CustReg.jsp">SIGNUP</a></li>
									      <li class="nav-item"><a class="nav-link">Welcome, <% 
									    		  try
									  	{
									  		String ses=session.getAttribute("login").toString();
									  		out.print(ses);
									  	}
									  	catch(Exception e)
									  	{
									  		
									  	}
									  	
									      
									      %></a></li>
									       <li class="nav-item"><a class="nav-link" href="CustLogout.jsp">LogOut</a></li>
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav><br>
	<div class="container-fluid bg-warning" id="">
	
		<h1 class="text-center">Select Hotels</h1>
		<a  href="CustProfile.jsp"style="margin-left:1000px;"class="btn btn-primary">Profile</a>	
	</div><br>
	<h2 class="bg-warning">Luxuries Rooms</h2>
			<div class="card-columns">
		<div class="card ">
			<img src="lux4.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Luxury-King</h3>
			<h5>Starting from Rs.2999/-</h5>
			<a href="CustReservation.jsp" class="btn btn-warning">Book Now</a>   <a href="HotelDetails.jsp#luxking">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="lux2.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Luxury-Queen</h3>
			<h5>Starting from Rs.1999/-</h5>
			<a href="CustReservation.jsp" class="btn btn-warning">Book Now</a>   <a href="HotelDetails.jsp#luxqueen">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="set1.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Luxury-Standard</h3>
			<h5>Starting from Rs.999/-</h5>
			<a href="CustReservation.jsp" class="btn btn-warning">Book Now</a>   <a href="HotelDetails.jsp#luxstd">More details</a>
			</div>
		</div>
	</div>
	<header style="background-image:url();">
		<h2 class="bg-warning">Deluxe Rooms</h2>
	<div class="card-columns">
		<div class="card ">
			<img src="dex1.jpg"class="card-img">
			<div class="card-body">
			<h1 class="card-title">King</h1>
			<h3>Starting from Rs.1999/-</h3>
			<a href="CustReservation.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="dex2.jpg"class="card-img">
			<div class="card-body">
			<h1 class="card-title">Queen</h1>
			<h3>Starting from Rs.1999/-</h3>
			<a href="CustReservation.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="dex3.jpg"class="card-img">
			<div class="card-body">
			<h1 class="card-title">Standard</h1>
			<h3>Starting from Rs.1999/-</h3>
			<a href="CustReservation.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
	</div>
	</header>
	<header style="background-image:url(th1.png);">
		<h2 class="bg-warning">Normal Rooms</h2>
	<div class="card-columns">
		<div class="card ">
			<img src="nor1.jpg"class="card-img">
			<div class="card-body">
			<h1 class="card-title">King</h1>
			<h3>Starting from Rs.999/-</h3>
			<a href="CustReservation.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="nor2.jpg"class="card-img">
			<div class="card-body">
			<h1 class="card-title">Queen</h1>
			<h3>Starting from Rs.999/-</h3>
			<a href="CustReservation.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="nor3.jpg"class="card-img">
			<div class="card-body">
			<h1 class="card-title">Standard</h1>
			<h3>Starting from Rs.999/-</h3>
			<a href="CustReservation.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
	</div>
	</header>
	</div>
	</body>
	</html>