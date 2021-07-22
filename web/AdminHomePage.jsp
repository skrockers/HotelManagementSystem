<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
#main
{
height:100vh;
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
	

<div class="container-fluid" id="main">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
		<div class="container">
				<a href="bootstrap.jsp" class="navbar-brand"  id="brandhover">SK HOTELS</a>
					<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarid">
						<span class="navbar-toggler-icon"></span>
						</button>
							<div class="collapse navbar-collapse" id="navbarid">
									<ul class="navbar-nav text-center"  id="ulhover">
										<li class="nav-item"><a class="nav-link" href="bootstrap.jsp">HOME</a></li>
										<li class="nav-item"><a class="nav-link" href="">GALLERY</a></li>
										<li class="nav-item" ><a class="nav-link" href="">HOTELS</a></li>
										<li class="nav-item" ><a class="nav-link" href="">ABOUTUS</a></li>
										<li class="nav-item"><a class="nav-link" href="">CONTACTUS</a></li>
										<li class="nav-item dropdown" ><a class="nav-link dropdown-toggle"data-toggle="dropdown" href="">LOGIN</a>
											<ul class="dropdown-menu">
												<li><a href="CustLog.jsp" class="dropdown-item"> CUSTOMER</a></li>
												<li><a href="ManLog.jsp" class="dropdown-item">MANAGER</a></li>
												<li><a href="EmpLog.jsp" class="dropdown-item">EMPLOYEE</a></li>
												<li><a href="AdminLog.jsp" class="dropdown-item">ADMIN</a></li>
											</ul>
										</li>	
									    <li class="nav-item"><a class="nav-link" href="#">SIGNUP</a></li>
									       <li class="nav-item"><a class="nav-link">Welcome, <% 
									    		  try
									  	{
									  		String ses=session.getAttribute("admin").toString();
									  		out.print(ses);
									  	}
									  	catch(Exception e)
									  	{
									  		
									  	}
									  	
									      
									      %></a></li>
									       <li class="nav-item"><a class="nav-link" href="AdminLog.jsp">LogOut</a></li>
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav><br>
	<div class="container bg-warning"><h1>Admin HomePage</h1></div>
	<div class="container-fluid">
	<br><br><br>
	<div class="card-columns">
		<div class="card bg-warning"style="width:300px;height:150px;">
			<div class="card-body">
			<h3>Customer Request</h3><br>
			<a style="width:200px;margin-left:20px;" class="btn btn-primary"href="ViewRequest.jsp">View Request</a>
			
			</div>
		</div>
		
		<div class="card bg-warning"style="width:300px;height:150px;">
			<div class="card-body">
			<h3>Add/View/Assign Rooms</h3><br>
			<a style="width:200px;margin-left:50px;margin-top:-20px;" class="btn btn-primary"href="RoomDetails.jsp">Go</a>
			
			</div>
		</div>
		
		<div class="card bg-warning"style="width:300px;height:150px;">
			<div class="card-body">
			<h3>View Reservations</h3><br>
			<a style="width:200px;margin-left:20px;" class="btn btn-primary"href="ViewReservation.jsp">Go</a>
			
			</div>
		</div>
		
		<div class="card bg-warning"style="width:300px;height:150px;">
			<div class="card-body">
			<h3>UnAssign Rooms</h3><br>
			<a style="width:200px;margin-left:20px;" class="btn btn-primary"href="UnAssignRoom.jsp">Go</a>
			
			</div>
		</div>
		
		<div class="card bg-warning"style="width:300px;height:150px;">
			<div class="card-body">
			<h3>Records</h3><br>
			<a style="width:200px;margin-left:20px;" class="btn btn-primary"href="Records.jsp">Go</a>
			
			</div>
		</div>
		
		
		
	</div>
	
	<br>
	<br>
	<br>

	
	
	</div>
	</div>
		</body>
	</html>