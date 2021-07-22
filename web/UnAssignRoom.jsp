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
	<div class="container bg-warning"><h1>UnAssign the Room</h1></div><br>
	<div class="container-fluid">
	
	<!----------------------------------------------------------------------------------------------------------------------------  -->
	<%
	try{
	String record=session.getAttribute("oldrecords").toString();
	%>
	<div class="alert alert-success">
	<strong>Success..!!!</strong><%out.print(record); %>
	</div>
	<%session.removeAttribute("oldrecords"); %>
	<%}catch(Exception e){} %>
	<!--  ------------------------------------------------------------------------------------------------------------------------------>
	<%
	try{
	String found2=session.getAttribute("found").toString();
	%>
	<div class="alert alert-success">
	<strong>Success..!!!</strong><%out.print(found2); %>
	</div>
	<%session.removeAttribute("found"); %>
	<%}catch(Exception e){} %>
	<!-- ---------------------------------------------------------------------------------------------------------------------------- -->
	<%
	try{
	String unfound=session.getAttribute("unfound").toString();
	%>
	<div class="alert alert-danger">
	<strong>Error occured..!!!</strong><%out.print(unfound); %>
	<%session.removeAttribute("unfound"); %>
	</div>
	
	<%}catch(Exception e){} %>
	<!-----------------------------------------------------------------  -->
		<%
	try{
	String qwerty=session.getAttribute("qwerty").toString();
	%>
	<div class="alert alert-danger">
	<strong>Error occured..!!!</strong><%out.print(qwerty); %>
	<%session.removeAttribute("qwerty"); %>
	</div>
	
	<%}catch(Exception e){} %>
<div class="container bg-warning"><br><br>
	<a  href="AdminHomePage.jsp" style="margin-top:-20px;margin-left:1000px;"class="btn btn-primary">Back</a>

	<form class="form-inline" action="UnAssignFunction.jsp" method="post">
	<label><h4>RoomNo</h4></label>
	<input type="text" name="rnum" class="form-control">
	<input  style="margin-left:100px;"type="submit" class="form-control btn btn-primary" value="Search" formaction="UnAssignSearch.jsp">
	<input style="margin-left:100px;" type="submit" class="form-control btn btn-success" value="Confirm">
	</form><br><br>
	<table>
	<tr>
	<td><input type="text" name="rdf" value="<%out.print(session.getAttribute("r1"));%>"></td>
	</tr>
	</table>
</div><br><br>
<div class="container bg-warning">
<br>
	<%try{ %>
<table>

	
	<tr>
	<th style="width:200px;"class="text-center">RoomNo</th>
			<th style="width:200px;"class="text-center">RoomID</th>
			<th style="width:200px;"class="text-center">GivenType</th>
	<th class="text-center font-weight-bold" style="width:400px;">Request_ID</th>
			<th class="text-center" style="width:200px;">Date</th>
			<th style="width:200px;" class="text-center">CustomerName</th>
			<th style="width:200px;"class="text-center">EmailID</th>
			<th style="width:200px;"class="text-center">ContactNo</th>
			<th style="width:200px;" class="text-center">No.of Rooms</th>
			<th style="width:200px;"class="text-center">RoomType</th>
			<th style="width:200px;"class="text-center">Check-In</th>
			<th style="width:200px;"class="text-center">Check-Out</th>
	</tr>

	<tr>
	<td class="text-center"><h6><%out.print(session.getAttribute("r1")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r2")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r3")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r4")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r5")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r6")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r7")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r8")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r9")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r10")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r11")); %></h6></td>
	<td class="text-center"><h6><%out.print(session.getAttribute("r12")); %></h6></td>

	<%session.removeAttribute("r2"); %>
	<%session.removeAttribute("r3"); %>
	<%session.removeAttribute("r4"); %>
	<%session.removeAttribute("r5"); %>
	<%session.removeAttribute("r6"); %>
	<%session.removeAttribute("r7"); %>
	<%session.removeAttribute("r8"); %>
	<%session.removeAttribute("r9"); %>
	<%session.removeAttribute("r10"); %>
	<%session.removeAttribute("r11"); %>
	<%session.removeAttribute("r12"); %>
	<%}catch(Exception e){} %>		

	
	
	
	
	</tr>



</table>
</div>





	</div>
		</body>
	</html>