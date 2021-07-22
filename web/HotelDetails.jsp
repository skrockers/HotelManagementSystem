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
	<div class="container bg-warning">
	<h1>Contents</h1>
	</div>
	<div class="container bg-warning" id="luxling">
	<img  src="lux4.jpg"width="300px;"style="border-radius:30px 30px;float:left;">
<h1  style="margin-left:330px;">Luxury-King</h1>
	<p style="margin-left:330px;">Luxury King is the one of the topest RoomType in SK Hotels.It consists of different features available for the customers.<br></p>
	<h4 style="margin-left:330px;">Free Wifi   (Speed varies according to Roomtype)</h4>
	<p style="margin-left:330px;">Guests can simultaneously connect multiple devices to the Internet using Wi-Fi / LAN cable-Wi-Fi for smart phones and tablets and LAN cable for laptops to secure a stable connection. Please choose the suitable connection depending on the device. LAN cable and Wi-Fi are both free of charge.
	</p>
	<h4>Beds</h4>
	<p>Single rooms have a double bed (1,500 mm x 2,030 mm) although bed sizes may change depending on the hotel. Please ask the front desk clerk for extra blankets if needed.
	There is a space under the bed for large suitcases to maximize the room space. (This may only  available for Luxury Rooms.)</p>
	<h4>Writing Desks</h4>
	<p>A phone, kettle on an electric stove or electric kettle, hair dryer, and light switches are all located around the writing desk for your convenience. Guests can rent desk lamps at the front desk if needed.</p>
	<h4 >Refrigerator</h4>
	<p>
	The refrigerator is empty for the guests to keep their drinks and foods purchased at vending machines in the lobby or convenience stores nearby.
	Any drinks and foods left in the refrigerator after check out will be disposed of.</p>
	<h4>Kettle on an Electric Stove</h4>
	<p>Please feel free to use the kettle on an electric stove or electric kettle.</p>
	<h4>Air conditioner</h4>
	<p>Each room has an air conditioner. Please set the temperature to your preference. (Some hotels use a central air-conditioning sytem, where each room has a dial to adjust the air flow.)</p>
<h4>Telephone and Morning Call</h4>
<p>
After dialling 0, the phone can be used for both domestic and international calls.
Please refer to the plate near the telephone for further instructions.
Toyoko Inn does not charge additional fees other than the bills sent from the phone companies. You are required to pay the telephone charges at check-out.
</p>
<h4>Humidifier</h4>
<p>All rooms are equipped with a humidifier. You are able to adjust the settings very precisely, so please feel free to use it during the dry winter season, according to your preference.</p>
<h4>Radiator</h4>
<p>Some hotels have a radiator underneath the writing desk or in the corner of the room.
Warm water circulates the radiator tubes to keep the rooms warm during winter.</p>
<a class="btn btn-primary " href="CustReservation.jsp" style="margin-left:450px;float:left;">Book Now</a>
<h3 class="text-danger">(Starting from Rs.5999/-)</h3>	
	<br>
	</div>
	<br>
	<div class="container bg-warning" id="luxqueen">
	<img  src="lux4.jpg"width="300px;"style="border-radius:30px 30px;float:left;">
<h1  style="margin-left:330px;">Luxury-Queen</h1>
	<p style="margin-left:330px;">Luxury Queen is the second level of the Luxury series  in SK Hotels.It consists of different features available for the customers.<br></p>
	<h4 style="margin-left:330px;">Free Wifi  (Speed varies according to Roomtype)</h4>
	<p style="margin-left:330px;">Guests can simultaneously connect multiple devices to the Internet using Wi-Fi / LAN cable-Wi-Fi for smart phones and tablets and LAN cable for laptops to secure a stable connection. Please choose the suitable connection depending on the device. LAN cable and Wi-Fi are both free of charge.
	</p>
	<h4>Beds</h4>
	<p>Single rooms have a double bed (1,500 mm x 2,030 mm) although bed sizes may change depending on the hotel. Please ask the front desk clerk for extra blankets if needed.
	There is a space under the bed for large suitcases to maximize the room space. (This may only  available for Luxury Rooms.)</p>
	<h4 >Refrigerator</h4>
	<p>
	The refrigerator is empty for the guests to keep their drinks and foods purchased at vending machines in the lobby or convenience stores nearby.
	Any drinks and foods left in the refrigerator after check out will be disposed of.</p>
	<h4>Writing Desks</h4>
	<p>A phone, kettle on an electric stove or electric kettle, hair dryer, and light switches are all located around the writing desk for your convenience. Guests can rent desk lamps at the front desk if needed.</p>
	
	<h4>Air conditioner</h4>
	<p>Each room has an air conditioner. Please set the temperature to your preference. (Some hotels use a central air-conditioning sytem, where each room has a dial to adjust the air flow.)</p>
<a class="btn btn-primary " href="CustReservation.jsp" style="margin-left:450px;float:left;">Book Now</a>
<h3 class="text-danger">(Starting from Rs.3999/-)</h3>	
<br>
	</div>
	<br>
	<div class="container bg-warning"id="luxstd">
	<img  src="lux4.jpg"width="300px;"style="border-radius:30px 30px;float:left;">
<h1  style="margin-left:330px;">Luxury-Standard</h1>
	<p style="margin-left:330px;">Luxury Standard is the third level of the Luxury series  in SK Hotels.It consists of different features available for the customers.<br></p>
	<h4 style="margin-left:330px;">Free Wifi  (Speed varies according to Roomtype)</h4>
	<p style="margin-left:330px;">Guests can simultaneously connect multiple devices to the Internet using Wi-Fi / LAN cable-Wi-Fi for smart phones and tablets and LAN cable for laptops to secure a stable connection. Please choose the suitable connection depending on the device. LAN cable and Wi-Fi are both free of charge.
	</p>
	<h4>Beds</h4>
	<p>Single rooms have a single bed  although bed sizes may change depending on the hotel. Please ask the front desk clerk for extra blankets if needed.
	</p>
	
	<h4>Air conditioner</h4>
	<p>Each room has an air conditioner. Please set the temperature to your preference. (Some hotels use a central air-conditioning sytem, where each room has a dial to adjust the air flow.)</p>
<a class="btn btn-primary " href="CustReservation.jsp" style="margin-left:450px;float:left;">Book Now</a>
<h3 class="text-danger">(Starting from Rs.1999/-)</h3>	
<br>
	</div>
	
</div>
</body>
</html>