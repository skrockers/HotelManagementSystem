<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SKHotels</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
li
{
width:120px;
}
#car
{
height:500px;
}
#main
{
height:100vh;background-image:url(th1.png);height:150vh;
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

</style>
</head>
<body>
<div class="container-fluid" id="main">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark " id="navhover">
		<div class="container">
				<a href="bootstrap.jsp" class="navbar-brand"id="brandhover">SK HOTELS</a>
					<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarid">
						<span class="navbar-toggler-icon"></span>
						</button>
							<div class="collapse navbar-collapse" id="navbarid">
									<ul class="navbar-nav text-center" id="ulhover">
										<li class="nav-item"><a class="nav-link" href="bootstrap.jsp">HOME</a></li>
										<li class="nav-item"><a class="nav-link" href="Gallery.jsp">GALLERY</a></li>
										<li class="nav-item" ><a class="nav-link" href="">HOTELS</a></li>
										<li class="nav-item" ><a class="nav-link" href="AboutUs.jsp">ABOUTUS</a></li>
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
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav><br>
	
	<div class="container bg-warning">
	<h1>Gallery</h1>
	</div><br><br>
	<div class="card-columns">
		<div class="card"style="width:300px;margin-left:100px;" >
		<img src="lux4.jpg" class="card-img">
		</div>
		
		<div class="card"style="width:300px;height:100px;margin-left:50px;" >
		<img src="lux2.jpg" class="card-img">
		</div>
		
		<div class="card"style="width:300px;height:100px;" >
		<img src="set1.jpg" class="card-img">
		</div>
	</div><br><br>
	<div class="card-columns">
		<div class="card"style="width:300px;margin-left:100px;" >
		<img src="dex1.jpg" class="card-img">
		</div>
		
		<div class="card"style="width:300px;height:100px;margin-left:50px;" >
		<img src="dex2.jpg" class="card-img">
		</div>
		
		<div class="card"style="width:300px;height:100px;" >
		<img src="dex3.jpg" class="card-img">
		</div>
	</div><br><br>
	<div class="card-columns">
		<div class="card"style="width:300px;margin-left:100px;" >
		<img src="nor3.jpg" class="card-img">
		</div>
		
		<div class="card"style="width:300px;height:100px;margin-left:50px;" >
		<img src="nor2.jpg" class="card-img">
		</div>
		
		<div class="card"style="width:300px;" >
		<img src="nor1.jpg" class="card-img">
		</div>
	</div><br><br>
	</div>
	</body>
	</html>