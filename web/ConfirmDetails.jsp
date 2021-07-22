<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservation</title>
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
input[name=custname],input[name=email],input[name=contact]
{width:300px;}
textarea[name=address]
{width:300px;}

input[type=submit]
{         width:200px;                                     }
#nationality
{     width:250px;                                                           }
#address
{     width:300px;                                                           }
#form
{     width:500px; border-radius: 20px 90px;     } 
input[name="roomno"],input[name=adult],input[name=child]
{      width:200px;     }
#roomtype
{     width:250px;                                                           }

</style>
</head>
<body>
<%


    %>
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
									    <li class="nav-item"><a class="nav-link" href="CustReg.jsp">SIGNUP</a></li>
									      <li class="nav-item"><a class="nav-link">Welcome, <% 
									      try{
									    	  String ses=session.getAttribute("login").toString();

									    	  if(ses==null)
									    	  {
									    	   session.invalidate();
									    	   response.sendRedirect("CustLog.jsp");
									    	  }
									    	  else
									    	  {
									    	  	out.print(ses);
									    	  }
									      }
									      catch(Exception e)
									      {
									    	  
									      }
									      
									      
									      %></a></li>
									       <li class="nav-item"><a class="nav-link" href="CustLog.jsp">LogOut</a></li>
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav><br>
	<%
	String LoginName=session.getAttribute("login").toString();
	String CustomerName=request.getParameter("custname");
	String EmailID=request.getParameter("email");
	String ContactNo=request.getParameter("contact");
	String Nationality=request.getParameter("nationality");
	String Address=request.getParameter("address");
	String RoomCount=request.getParameter("roomno");
	String RoomType=request.getParameter("roomtype");
	String AdultCount=request.getParameter("adult");
	String ChildCount=request.getParameter("child");
	String Checkin=request.getParameter("checkin");
	String Checkout=request.getParameter("checkout");
	%>
	<div class="container bg-warning">
	<h1>Confirm Details</h1>
	 <table class="table-hover" style="width:470px;">
	 	<tr>
	 		<th style="font-size:30px;">Attributes</th>
	 		<th style="font-size:30px;">Values</th>
	 	</tr>
	 	<tr>
	 		<th>Account Name:</th>
	 		<td><%out.print(LoginName); %></td>
	 	</tr>
	 	<tr>
	 		<th>Customer Name:</th>
	 		<td><%out.print(CustomerName); %></td>
	 	</tr>
	 	<tr>
	 		<th>EmailID:</th>
	 		<td><%out.print(EmailID); %></td>
	 	</tr>
	 	<tr>
	 		<th>ContactNo:</th>
	 		<td><%out.print(ContactNo); %></td>
	 	</tr>
	 	<tr>
	 		<th>Nationality:</th>
	 		<td><%out.print(Nationality); %></td>
	 	</tr>
	 	<tr>
	 		<th>Address:</th>
	 		<td><%out.print(Address); %></td>
	 	</tr>
	 	<tr>
	 		<th>No. of Rooms:</th>
	 		<td><%out.print(RoomCount); %></td>
	 	</tr>
	 	<tr>
	 		<th>Room Type:</th>
	 		<td><%out.print(RoomType); %></td>
	 	</tr>
	 	<tr>
	 		<th>No. of Adults:</th>
	 		<td><%out.print(AdultCount); %></td>
	 	</tr>
	 	<tr>
	 		<th>No. of Children:</th>
	 		<td><%out.print(ChildCount); %></td>
	 	</tr>
	 	<tr>
	 		<th>Check-in:</th>
	 		<td><%out.print(Checkin); %></td>
	 	</tr>
	 	<tr>
	 		<th>Check-out:</th>
	 		<td><%out.print(Checkout); %></td>
	 	</tr>	
	 </table><br>
	 <button class="btn btn-primary"style="width:200px;"><a href="CustReservation.jsp" class="text-white">Modify</a></button>	
	 <br><br>
	
	
	
	
	
	<form action="StoreData.jsp" method="post">
	 <table class="table-hover" style="width:470px;float:right;margin-top:-400px;">
	 	<tr>
	 		<td><input type="hidden" name="account" value="<%out.print(LoginName);%>"></td>
	 	</tr>
	 	
	 	<tr>
	 		<td><input type="hidden"  name="cname" value="<%out.print(CustomerName); %>"></td>
	 	</tr>
	 	
	 	<tr>
	 		
	 		<td><input type="hidden" name="cemail" value="<%out.print(EmailID); %>"></td>
	 	</tr>
	 	<tr>
	 		
	 		<td><input type="hidden" name="ccontact" value="<%out.print(ContactNo); %>"></td>
	 	</tr>
	 	<tr>
	 		
	 		<td><input type="hidden" name="cnationality" value="<%out.print(Nationality); %>"></td>
	 	</tr>
	 	<tr>
	 		
	 		<td><input type="hidden" name="caddress" value="<%out.print(Address); %>"></td>
	 	</tr>
	 	<tr>
	 		
	 		<td><input type="hidden" name="croom" value="<%out.print(RoomCount); %>"></td>
	 	</tr>
	 	<tr>
	 		
	 		<td><input type="hidden" name="croomtype" value="<%out.print(RoomType); %>"></td>
	 	</tr>
	 	<tr>
	 		
	 		<td><input type="hidden" name="cadult" value="<%out.print(AdultCount); %>"></td>
	 	</tr>
	 	<tr>
	 		
	 		<td><input type="hidden"  name="cchild" value="<%out.print(ChildCount); %>"></td>
	 	</tr>
	 	<tr>
	 		
	 		<td><input type="hidden" name="ccheckin" value="<%out.print(Checkin); %>"></td>
	 	</tr>
	 	<tr>
	 		
	 		<td><input type="hidden" name="ccheckout" value="<%out.print(Checkout); %>"></td>
	 	</tr>	
	 </table><br>
	 <input type="submit" style="margin-left:250px;margin-top:-85px;" class="btn btn-success" value="Submit">	
	 <br><br>
	 </form>
	</div>
	
	
	
</div>
</body>
</html>
