<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign Normal</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
String req=request.getParameter("assrequest2");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
String search="select BookingDate,Name,EmailID,ContactNo,RoomCount,RoomType,CheckIn,CheckOut from custreservations where Request_ID=?";
PreparedStatement pss=conn.prepareStatement(search);
pss.setString(1,req);
ResultSet rst=pss.executeQuery();



%>




<div class="container">
<div class="container bg-warning"style="margin-top:50px;"><a  href="AdminHomePage.jsp" style="margin-left:1000px;"class="btn btn-primary">Back</a><h1>Assign Normal Room to Customers</h1></div><br>
<!-- ----------------------------------------------------------------------------------------------------------- -->
<%
try{
	String noroomsg=session.getAttribute("noroomsg2").toString();

%>
<div class="alert alert-danger">
<strong>Error occured..!!!</strong><%out.print(noroomsg); %>.
<%session.removeAttribute("noroomsg2"); %>
<%session.removeAttribute("noroomsg2"); %>
</div>
<%
}
catch(Exception e){}%>
<!-- --------------------------------------------------------------------------------------------------------------------- -->
<%
try{
	String roomsg=session.getAttribute("roomsg2").toString();

%>
<div class="alert alert-success">
<strong>Success..!!!</strong><%out.print(roomsg); %>.
<%session.removeAttribute("roomsg2"); %>
</div>
<%
}
catch(Exception e){}%>
<!----------------------------------------------------------------------------------------------------------------------------  -->
<%
try{
	String found=session.getAttribute("found2").toString();

%>
<div class="alert alert-success">
<strong>Success..!!!</strong><%out.print(found); %>.
<%session.removeAttribute("found2"); %>
</div>
<%
}
catch(Exception e){}%>
<!-- ---------------------------------------------------------------------------------------------------------- -->
<%
try{
	String notfound=session.getAttribute("notfound2").toString();

%>
<div class="alert alert-danger">
<strong>Error occured..!!!!</strong><%out.print(notfound); %>.
<%session.removeAttribute("notfound2"); %>
</div>
<%
}
catch(Exception e){}%>
<div class="container bg-warning"><br>
	<form  action="NormalRoomAssigned.jsp"method="post"class="form-inline">
	<input type="number" style="margin-left:50px;"class="form-control"name="assroom2"placeholder="RoomNo">
	<input  class="btn btn-primary"type="submit"value="Search"style="margin-left:50px;" name="submit2"formaction="NormalSearch.jsp">
<input type="number"style="margin-left:50px;" class="form-control"name="assrequest2"placeholder="Request ID">
<input  class="btn btn-primary"type="submit"value="Searching"style="margin-left:50px;" name="submit2"formaction="">

 
 	
	</form>
<br>
</div><br>
<form action="NormalRoomAssigned.jsp"  method="post">
<div class="container bg-warning">


<%while(rst.next())
			{%>
			<input type="hidden"   name="reqn1" value="<%out.print(rst.getString(1)); %>" >
			<input type="hidden"  name="reqn2" value="<%out.print(rst.getString(2)); %>" >
			<input type="hidden"  name="reqn3"value="<%out.print(rst.getString(3)); %>" >
			<input type="hidden"  name="reqn4"value="<%out.print(rst.getString(4)); %>" >
			<input type="hidden" name="reqn5" value="<%out.print(rst.getString(5)); %>" >
			<input type="hidden"  name="reqn6" value="<%out.print(rst.getString(6)); %>" >
			<input type="hidden" name="reqn7" value="<%out.print(rst.getString(7)); %>" >
			<input type="hidden"  name="reqn8" value="<%out.print(rst.getString(8));%>" >
			
			<input type="text"  name="reqn9" value="<%out.print(request.getParameter("assrequest2"));%>" >
		
</div>

<div class="container bg-warning">
	<%try{
				String rec=session.getAttribute("roomid2").toString();
				String rec2=session.getAttribute("roomtype2").toString();
				String rec3=session.getAttribute("roomnos2").toString();
				%>
				<input type="text"  name="reqn10" value="<%out.print(rec3);%>" >
				<input type="hidden"  name="reqn11"value="<% out.print(rec);%>">
				<input type="hidden"  name="reqn12"value="<% out.print(rec2);%>">
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
					<td class="text-center"><h6><%out.print(session.getAttribute("roomid2").toString()); %></h6></td>
			<td class="text-center"><h6><%out.print(session.getAttribute("roomtype2").toString()); %></h6></td> 
			<%-- <%session.removeAttribute("roomid2"); %>
			<%session.removeAttribute("roomtype2"); %> --%>
			
						
			
			<%}catch(Exception e){} %>
				</tr>
			</table>
			</div> 

</div>
</body>
</html>