<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Reservations</title>
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
	String notfound=session.getAttribute("notviewfound").toString();
	
	%>
	<div class="alert alert-danger">
	<strong>Error occured..!!!</strong>	<%out.print(notfound); %>
	<%session.removeAttribute("notviewfound"); %>
	</div>
	<%
	}catch(Exception e){}
	%>
	

	
	
	<%
	try
	{	
	String found=session.getAttribute("viewfound").toString();
	
	%>
	<div class="alert alert-success">
	<strong>Success.!!!</strong>	<%out.print(found); %>
	<%session.removeAttribute("viewfound"); %>
		</div>
	<%
	}catch(Exception e){}
	%>
	


<div class="container bg-warning">
<h1>View Reservations</h1><br><br>
	<a  href="AdminHomePage.jsp" style="margin-top:-20px;margin-left:1000px;"class="btn btn-primary">Back</a>
	<form  class="form-inline"action="ViewSearch.jsp" method="post"><br>
	<label style="margin-left:100px;"><h4>Request-ID:</h4></label>
		<input type="text" style="width:300px;margin-left:100px;" name="viewsearch" class="form-control">
		<input type="submit" name="submit"style="margin-left:100px;" class="btn btn-primary"value="Search">
	</form><br>
	
	
</div><br> 
<div class="container-fluid bg-warning">
<table class="table-striped table-responsive-lg	">
		<tr style="height:50px;">
			<th class="text-center font-weight-bold" style="width:400px;">Request_ID</th>
			<th class="text-center" style="width:200px;">Date</th>
			<th style="width:200px;" class="text-center">CustomerName</th>
			<th style="width:200px;"class="text-center">EmailID</th>
			<th style="width:200px;"class="text-center">ContactNo</th>
			<th style="width:200px;" class="text-center">No.of Rooms</th>
			<th style="width:200px;"class="text-center">RoomType</th>
			<th style="width:200px;"class="text-center">Check-In</th>
			<th style="width:200px;"class="text-center">Check-Out</th>
						<th style="width:200px;"class="text-center">RoomNo</th>
									<th style="width:200px;"class="text-center">RoomID</th>
												<th style="width:200px;"class="text-center">GivenType</th>
			
			
		</tr>
		<tr>
		</tr>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
	String querys="select * from viewreservations";
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
			<td class="text-center"><h6><%out.print(rst.getString(11)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(12)); %></h6></td>
		</tr>
		
<%	
	}	
%>
</table>

</div><br>

<div class="container-fluid bg-warning">
<table>
<tr style="height:50px;">
			<th class="text-center font-weight-bold" style="width:400px;">Request_ID</th>
			<th class="text-center" style="width:200px;">Date</th>
			<th style="width:200px;" class="text-center">CustomerName</th>
			<th style="width:200px;"class="text-center">EmailID</th>
			<th style="width:200px;"class="text-center">ContactNo</th>
			<th style="width:200px;" class="text-center">No.of Rooms</th>
			<th style="width:200px;"class="text-center">RoomType</th>
			<th style="width:200px;"class="text-center">Check-In</th>
			<th style="width:200px;"class="text-center">Check-Out</th>
						<th style="width:200px;"class="text-center">RoomNo</th>
									<th style="width:200px;"class="text-center">RoomID</th>
												<th style="width:200px;"class="text-center">GivenType</th>
			
			
		</tr>

</table>
<%
try
{
%>	
	<table class="table-striped table-responsive-lg	">
	
	<tr>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("sv1").toString()); %></h6></td>
		<td style="width:200px;" class="text-center"><h6><%out.print(session.getAttribute("sv2").toString()); %></h6></td>
		<td style="width:200px;" class="text-center"><h6><%out.print(session.getAttribute("sv3").toString()); %></h6></td>
		<td style="width:200px;" class="text-center"><h6><%out.print(session.getAttribute("sv4").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("sv5").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("sv6").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("sv7").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("sv8").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("sv9").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("sv10").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("sv11").toString()); %></h6></td>
		<td style="width:200px;"class="text-center"><h6><%out.print(session.getAttribute("sv12").toString()); %></h6></td>
		<%session.removeAttribute("sv1");
		session.removeAttribute("sv2");
		session.removeAttribute("sv3");
		session.removeAttribute("sv4");
		session.removeAttribute("sv5");
		session.removeAttribute("sv6");
		session.removeAttribute("sv7");
		session.removeAttribute("sv8");
		session.removeAttribute("sv9");
		session.removeAttribute("s10");
		session.removeAttribute("s11");
		session.removeAttribute("s12");
 %>
		</tr>
	</table>
<%}catch(Exception e){} %>	

</div>
<br><br>


</div>

</body>
</html>