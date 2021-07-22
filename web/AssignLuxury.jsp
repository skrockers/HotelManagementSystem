<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign Luxury</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
String req=request.getParameter("assrequest");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
String search="select BookingDate,Name,EmailID,ContactNo,RoomCount,RoomType,CheckIn,CheckOut from custreservations where Request_ID=?";
PreparedStatement pss=conn.prepareStatement(search);
pss.setString(1,req);
ResultSet rst=pss.executeQuery();



%>




<div class="container">
<div class="container bg-warning"style="margin-top:50px;"><h1>Assign Room to Customers</h1>
<a  href="AdminHomePage.jsp" style="margin-top:-20px;margin-left:1000px;"class="btn btn-primary">Back</a>
</div><br>
<!-- ----------------------------------------------------------------------------------------------------------- -->
<%
try{
	String noroomsg=session.getAttribute("noroomsg").toString();

%>
<div class="alert alert-danger">
<strong>Error occured..!!!</strong><%out.print(noroomsg); %>.
<%session.removeAttribute("noroomsg"); %>
<%session.removeAttribute("noroomsg"); %>
</div>
<%
}
catch(Exception e){}%>
<!-- --------------------------------------------------------------------------------------------------------------------- -->
<%
try{
	String roomsg=session.getAttribute("roomsg").toString();

%>
<div class="alert alert-success">
<strong>Success..!!!</strong><%out.print(roomsg); %>.
<%session.removeAttribute("roomsg"); %>
</div>
<%
}
catch(Exception e){}%>
<!----------------------------------------------------------------------------------------------------------------------------  -->
<%
try{
	String found=session.getAttribute("found").toString();

%>
<div class="alert alert-success">
<strong>Success..!!!</strong><%out.print(found); %>.
<%session.removeAttribute("found"); %>
</div>
<%
}
catch(Exception e){}%>
<!-- ---------------------------------------------------------------------------------------------------------- -->
<%
try{
	String notfound=session.getAttribute("notfound").toString();

%>
<div class="alert alert-danger">
<strong>Error occured..!!!!</strong><%out.print(notfound); %>.
<%session.removeAttribute("notfound"); %>
</div>
<%
}
catch(Exception e){}%>
<div class="container bg-warning"><br>
	<form  action="RoomAssigned.jsp"method="post"class="form-inline">
	<input type="number" style="margin-left:50px;"class="form-control"name="assroom"placeholder="RoomNo">
	<input  class="btn btn-primary"type="submit"value="Search"style="margin-left:50px;" name="submit2"formaction="Search.jsp">
<input type="number"style="margin-left:50px;" class="form-control"name="assrequest"placeholder="Request ID">
<input  class="btn btn-primary"type="submit"value="Searching"style="margin-left:50px;" name="submit2"formaction="">

 
 	
	</form>
<br>
</div><br>
<form action="RoomAssigned.jsp"  method="post">
<div class="container bg-warning">


<%while(rst.next())
			{%>
			<input type="hidden"   name="req1" value="<%out.print(rst.getString(1)); %>" >
			<input type="hidden"  name="req2" value="<%out.print(rst.getString(2)); %>" >
			<input type="hidden"  name="req3"value="<%out.print(rst.getString(3)); %>" >
			<input type="hidden"  name="req4"value="<%out.print(rst.getString(4)); %>" >
			<input type="hidden" name="req5" value="<%out.print(rst.getString(5)); %>" >
			<input type="hidden"  name="req6" value="<%out.print(rst.getString(6)); %>" >
			<input type="hidden" name="req7" value="<%out.print(rst.getString(7)); %>" >
			<input type="hidden"  name="req8" value="<%out.print(rst.getString(8));%>" >
			
			<input type="text"  name="req9" value="<%out.print(request.getParameter("assrequest"));%>" >
		
</div>

<div class="container bg-warning">
	<%try{
				String rec=session.getAttribute("roomid").toString();
				String rec2=session.getAttribute("roomtype").toString();
				String rec3=session.getAttribute("roomnos").toString();
				%>
				<input type="text"  name="req10" value="<%out.print(rec3);%>" >
				<input type="hidden"  name="req11"value="<% out.print(rec);%>">
				<input type="hidden"  name="req12"value="<% out.print(rec2);%>">
				<%			}
			catch(Exception e){}%>


</div>
<input class="btn btn-success" style="margin-left:500px;"type="submit" value="Submit">
</form>
 <div class="container bg-warning"><br>
<table class="table-striped table-responsive-lg">
		<tr style="height:50px;">
			<th class="text-center" style="width:200px;">RequestDate</th>
			<th style="width:200px;" class="text-center">Customer Name</th>
			<th style="width:200px;"class="text-center">EmailID</th>
			<th style="width:200px;"class="text-center">ContactNo</th>
			<th style="width:210px;"class="text-center">No. of Rooms</th>
			<th style="width:200px;"class="text-center">Room Type</th>
			<th style="width:200px;"class="text-center">CheckIn</th>
			<th style="width:200px;"class="text-center">CheckOut</th>
			
			
		</tr>

			<tr>
			<td class="text-center"><h6><%out.print(rst.getString(1)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(2)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(3)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(4)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(5)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(6)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(7)); %></h6></td>
			<td class="text-center"><h6><%out.print(rst.getString(8)); }%></h6></td>
		</tr>
			</table>
			<table class=" table-striped table-responsive-lg">
				<tr>
				<th style="width:200px;"class="text-center">RoomID</th>
			<th style="width:200px;"class="text-center">RoomType</th>
				</tr>
				<%try{ %>
				<tr>
					<td class="text-center"><h6><%out.print(session.getAttribute("roomid").toString()); %></h6></td>
			<td class="text-center"><h6><%out.print(session.getAttribute("roomtype").toString()); %></h6></td> 
			<%-- <%session.removeAttribute("roomid"); %>
			<%session.removeAttribute("roomtype"); %> --%>
			
						
			
			<%}catch(Exception e){} %>
				</tr>
			</table>
			</div> 

</div>
</body>
</html>