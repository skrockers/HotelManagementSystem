<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Luxury Room</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="alert alert-success" style="margin-top:50px;">
<%
try{
	String addluxury=session.getAttribute("addluxury").toString();

%>
<strong>Message from Database!!</strong><%out.print(addluxury); %>.
<%session.removeAttribute("addluxury"); }
catch(Exception e){}%>
</div>
<a class="btn btn-primary"style="margin-left:900px;"href="RoomDetails.jsp">Back</a>
	<div class="container bg-warning"style="margin-top:50px;width:500px;height:300px;border-radius:100px 20px 100px 20px;">
	<br><h1 class="text-center">Add Luxury Rooms</h1><br>
	<form class="form-inline"action="LuxuryAddDatabase.jsp" method="post">
		<input type="number" class="form-control"name="rno"style="width:150px;margin-left:50px;"placeholder="RoomNo">
		<input type="text" class="form-control"name="rid"style="width:150px;margin-left:50px;"placeholder="RoomID">
			<select  name="rtype" style="margin-left:50px;"class="form-control">
				<option>RoomType</option>
				<option>Luxury-King</option>
				<option>Luxury-Queen</option>
				<option>Luxury-Standard</option>
			</select>
			<br><br><br><br>
			<input type="submit"style="width:200px;margin-left:150px;"class="btn btn-success" name="add"value="Add"> 
		</form>
	</div>


</div>
</body>
</html>