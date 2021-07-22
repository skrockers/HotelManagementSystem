<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Request</title>
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
	
	<%
	try
	{	
	String notfound=session.getAttribute("notfound").toString();
	
	%>
	<div class="alert alert-danger">
	<strong>Error occured..!!!</strong>	<%out.print(notfound); %>
	<%session.removeAttribute("notfound"); %>
	</div>
	<%
	}catch(Exception e){}
	%>
	

	
	
	<%
	try
	{	
	String found=session.getAttribute("found").toString();
	
	%>
	<div class="alert alert-success">
	<strong>Success.!!!</strong>	<%out.print(found); %>
	<%session.removeAttribute("found"); %>
		</div>
	<%
	}catch(Exception e){}
	%>
	

<div class="container bg-warning">
<h1>View Request</h1>
</div>
<div class="container bg-warning"><br><br>
	<form  class="form-inline"action="RequestSearch.jsp" method="post"><br>
	<label style="margin-left:100px;"><h4>Request-ID:</h4></label>
		<input type="text" style="width:300px;margin-left:100px;" name="search" class="form-control">
		<input type="submit" name="submit"style="margin-left:100px;" class="btn btn-primary"value="Search">
	</form>
	<a  href="AdminHomePage.jsp" style="margin-top:-20px;margin-left:1000px;"class="btn btn-primary">Back</a>
</div><br> 
<div class="container-fluid bg-warning">
<table class="table-striped table-responsive-lg	">
		<tr style="height:50px;">
			<th class="text-center font-weight-bold" style="width:400px;">Request_ID</th>
			<th class="text-center" style="width:200px;">Date</th>
			<th style="width:200px;" class="text-center">UserName</th>
			<th style="width:200px;" class="text-center">CustomerName</th>
			<th style="width:200px;"class="text-center">EmailID</th>
			<th style="width:200px;"class="text-center">ContactNo</th>
			<th style="width:200px;"class="text-center">Nationality</th>
			<th style="width:200px;"class="text-center">Address</th>
			<th style="width:200px;" class="text-center">No.of Rooms</th>
			<th style="width:200px;"class="text-center">RoomType</th>
			<th style="width:200px;"class="text-center">Check-In</th>
			<th style="width:200px;"class="text-center">Check-Out</th>
			
			
		</tr>
		<tr>
		</tr>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
	String querys="select * from custreservations";
	PreparedStatement pss=cons.prepareStatement(querys);
	ResultSet rst=pss.executeQuery();
	while(rst.next())
	{%>
		<tr>
			<td class="text-center"><h6><%out.print(rst.getString(1)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(2)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(3)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(4)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(5)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(6)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(7)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(8)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(9)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(10)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(13)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(14)); %></h6></td>
		</tr>
		
<%	
	}	
%>
</table>

</div><br>

<div class="container-fluid bg-warning">
<table>
<tr style="height:50px;">
			<th class="text-center font-weight-bold" style="width:200px;">Request_ID</th>
			<th class="text-center" style="width:200px;">Date</th>
			<th style="width:200px;" class="text-center">UserName</th>
			<th style="width:200px;" class="text-center">CustomerName</th>
			<th style="width:200px;"class="text-center">EmailID</th>
			<th style="width:200px;"class="text-center">ContactNo</th>
			<th style="width:200px;"class="text-center">Nationality</th>
			<th style="width:200px;"class="text-center">Address</th>
			<th style="width:200px;" class="text-center">No.of Rooms</th>
			<th style="width:200px;"class="text-center">RoomType</th>
			<th style="width:200px;"class="text-center">Check-In</th>
			<th style="width:200px;"class="text-center">Check-Out</th>
			
			
		</tr>

</table>
<%
try
{
%>	
	<table>
	
	<tr>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("s1").toString()); %></h6></td>
		<td style="width:200px;" class="text-center"><h6><%out.print(session.getAttribute("s2").toString()); %></h6></td>
		<td style="width:200px;" class="text-center"><h6><%out.print(session.getAttribute("s3").toString()); %></h6></td>
		<td style="width:200px;" class="text-center"><h6><%out.print(session.getAttribute("s4").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("s5").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("s6").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("s7").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("s8").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("s9").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("s10").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("s13").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("s14").toString()); %></h6></td>
		<%session.removeAttribute("s1");
		session.removeAttribute("s2");
		session.removeAttribute("s3");
		session.removeAttribute("s4");
		session.removeAttribute("s5");
		session.removeAttribute("s6");
		session.removeAttribute("s7");
		session.removeAttribute("s8");
		session.removeAttribute("s0");
		session.removeAttribute("s10");
		session.removeAttribute("s13");
		session.removeAttribute("s14");
 %>
		</tr>
	</table>
<%}catch(Exception e){} %>	

</div>
<br><br>


</div>

</body>
</html>