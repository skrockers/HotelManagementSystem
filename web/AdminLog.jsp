<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
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
									    <li class="nav-item"><a class="nav-link" href="CustReg.jsp">SIGNUP</a></li>
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav><br>
	<div class="container bg-warning" id="form">
	<h1>Admin Login</h1><br>
	<form action="AdminSession.jsp" method="post">
		<div class="form-group">
			<label for="name"><b>UserName</b></label>
			<input type="text" class="form-control" name="username" id="name"placeholder="Enter Username">
		</div>
		<div class="form-group">
			<label for="password"><b>Password</b></label>
			<input type="password" class="form-control" name="password" id="password"placeholder="Enter Password">
		</div>
		<div class="form-group" id="submithover">
			<input type="submit" class="form-control text-dark bg-success " value ="Login"name="signup" id="signup"><br>
			<h5 class="text-danger"><%
			try
			{
				String errormsg=session.getAttribute("error").toString();
				out.print(errormsg);
				session.removeAttribute("error");
			}
			catch(Exception e)
			{
				
			}
			
			%></h5>
			<p><b>or Don't have any Account?<a href="AdminReg.jsp" class="text-danger">Register Now</a></b></p>
		</div><br>
			</form>
			
	</div><br><br><br><br>

 <footer class="page-footer bg-warning">
		<div class="container-fluid text-center">
			<div class="row">
				<div class="col -md-6 text-center">
					<h5 >FOOTER</h5>
					<p>any description of the page</p>
				</div>
			</div>
		</div>
	<div class="footer-copyright bg-warning text-center">2020 Copyright</div>
</div>
</body>
</html>