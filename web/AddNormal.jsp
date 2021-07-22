<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Normal Rooms</title>
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
	String addnormal=session.getAttribute("addnormal").toString();

%>
<strong>Message from Database!!</strong><%out.print(addnormal); %>
<%session.removeAttribute("addnormal"); }
catch(Exception e){}%>
</div>
<a class="btn btn-primary"style="margin-left:900px;"href="RoomDetails.jsp">Back</a>
	<div class="container bg-warning"style="margin-top:50px;width:500px;height:300px;border-radius:100px 20px 100px 20px;">
	<br><h1 class="text-center">Add Normal Rooms</h1><br>
	<form class="form-inline"action="NormalAddDatabase.jsp" method="post">
		<input type="number" class="form-control"name="rnno"style=" margin-left:50px;width:150px;"placeholder="RoomNo">
		<input type="text" class="form-control"name="rnid"style="width:150px;margin-left:50px;"placeholder="RoomID">
			<select  name="rntype" style="margin-left:50px;"class="form-control">
				<option>RoomType</option>
				<option>Normal-King</option>
				<option>Normal-Queen</option>
				<option>Normal-Standard</option>
			</select>
			<br><br><br><br>
			<input type="submit"style="width:200px;margin-left:150px;"class="btn btn-success" name="add"value="Add"> 
		</form>
	</div>


</div>
</body>
</html>