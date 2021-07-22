<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div style="margin-top:100px;"class="container bg-warning"><h1>Room Details</h1></div>
	<a  href="AdminHomePage.jsp" style="margin-top:-50px;margin-left:1000px;"class="btn btn-primary">Back</a>

	<div class="card-columns">
	<div class="card bg-warning" style="width:300px;margin-top:50px">
		<div class="card-body">	
		<h4>Luxury Rooms</h4>
	<a class="btn btn-success"style="width:250px;" href="AddLuxury.jsp">Add</a><br><br>
	<a class="btn btn-primary"style="width:250px;" href="ViewLuxury.jsp">View</a>
	
		
		</div>
	
	</div>
	<div class="card bg-warning" style="width:300px;margin-top:50px">
		<div class="card-body">
		<h4>Deluxe Rooms</h4>
		
	<a class="btn btn-success"style="width:250px;" href="AddDeluxe.jsp">Add</a><br><br>
	<a class="btn btn-primary"style="width:250px;" href="ViewDeluxe.jsp">View</a>
		
		</div>
	
	</div>
		<div class="card bg-warning" style="width:300px;margin-top:50px">
		<div class="card-body">
		<h4>Normal Rooms</h4>
		
	<a class="btn btn-success"style="width:250px;" href="AddNormal.jsp">Add</a><br><br>
	<a class="btn btn-primary"style="width:250px;" href="ViewNormal.jsp">View</a>
		
		</div>
	
	</div>
	</div>
</div>
</body>
</html>