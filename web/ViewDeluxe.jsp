<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Deluxe</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
String name="root";
String pass="12345";
String url="jdbc:mysql://localhost:3306/testing";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,name,pass);
String query="select *from adddeluxe";
PreparedStatement ps=con.prepareStatement(query);
ResultSet rs=ps.executeQuery();
%>


<div class="container">
<br><br>
<!-- <div class="container bg-warning"><h1>Luxury Rooms Detail View</h1></div>
 --><br>
<div class="container bg-warning">
<table >
<th><h1>DELUXE ROOM VIEW</h1></th>
	<%while(rs.next())
			{ %>
				<tr class="card bg-primary"style="border-radius:10px 50px;float:right;width:150px;height:100px;margin-top:50px;margin-left:50px;">
				
					<td><%out.print(rs.getInt(1)); %> </td>
					<td><%out.print(rs.getString(2)); %> </td>
					<td><a class="btn btn-success "style="margin-left:20px;height:40px;"href="AssignDeluxe.jsp">Assign</a><%} %> </td>					
				</tr>
			
			</table>
			
			<br><br>

</div>
</div>
</body>
</html>