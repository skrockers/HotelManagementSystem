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
	<nav class="navbar navbar-expand-xl navbar-dark bg-dark ">
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
	<h1>Personal details</h1>
	<a  href="CustHomePage.jsp"style="margin-left:1000px;"class="btn btn-primary">Back</a>
	</div>
<%
	String UserName=session.getAttribute("login").toString();
	String name="root";
	String pass="12345";
	String url="jdbc:mysql://localhost:3306/testing";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,name,pass);
	String query="select Name,Password,Email,ContactNo from custregister where UserName=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,UserName);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
	%>	
	<div class="container bg-warning">
	<table class="table-hover table-responsive">
		<tr style="height:50px;">
			<th style="width:200px;">Name:</th>
			<td style="width:300px;"><h6><% out.print(rs.getString(1));%></h6></td>
			<th>UserName:</th>
			<td style="padding-left:30px;"><h6><% out.print(UserName);%></h6></td>
		</tr>
		
		<tr style="height:50px;">
			<th >Password:</th>
			<td ><h6><% out.print(rs.getString(2));%></h6></td>
			<th>EmailID:</th>
			<td  style="padding-left:20px;"><h6><% out.print(rs.getString(3));%></h6></td>
		</tr>
		<tr style="height:50px;">
		<th > ContactNo:</th>
			<td ><h6><% out.print(rs.getString(4));%></h6></td>
		</tr>
	</table>
	</div>

	<%
	}/* resultset closing here */

	%>
	<br>
	<div class="container bg-warning">
	<h1>Booking details</h1>
	</div>
	<div class="container bg-warning">
	<table class="table-striped table-responsive-lg	">
		<tr style="height:50px;">
			<th class="text-center font-weight-bold" style="width:200px;">Request_ID</th>
			<th class="text-center" style="width:200px;">Date</th>
			<th style="width:200px;" class="text-center">CustomerName</th>
			<th style="width:200px;" class="text-center">No.of Rooms</th>
			<th style="width:200px;"class="text-center">RoomType</th>
			<th style="width:200px;"class="text-center">Check-In</th>
			<th style="width:200px;"class="text-center">Check-Out</th>
			<th style="width:200px;"class="text-center">ContactNo</th>
			<th style="width:200px;"class="text-center">EmailID</th>
		</tr>
	<%
	String Logname=session.getAttribute("login").toString();
	Class.forName("com.mysql.jdbc.Driver");
	Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
	String querys="select Request_ID,BookingDate,Name,EmailID,ContactNo,RoomCount,RoomType,CheckIn,CheckOut from custreservations where LoginName=?";
	PreparedStatement pss=cons.prepareStatement(querys);
	pss.setString(1,Logname);
	ResultSet rst=pss.executeQuery();
	while(rst.next())
	{%>
		<tr>
			<td class="text-center"><h6><%out.print(rst.getString(1)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(2)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(3)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(6)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(7)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(8)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(9)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(5)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(4)); %></h6></td>
		</tr>
<%	
	}	
%>

	</table>
	
	<br>
	</div>
			
</div>
	</body>
	</html>