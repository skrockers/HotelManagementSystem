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
height:100vh;background-image:url(th1.png);
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
												<!-- <li><a href="ManLog.jsp" class="dropdown-item"></a></li>
												<li><a href="EmpLog.jsp" class="dropdown-item"></a></li> -->
												<li><a href="AdminLog.jsp" class="dropdown-item">ADMIN</a></li>
											</ul>
										
										</li>	
									    <li class="nav-item"><a class="nav-link" href="CustReg.jsp">SIGNUP</a></li>
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav><br>
	
	<div class="container bg-warning">
	<h1>About Us</h1>
	</div><br>
	<div class="container bg-warning">
	<h1 class="text-center">AWARDS & ACHIEVEMENTS</h1>
	<br>
	<p><b>
	Over the years, SK Hotels  outstanding achievements have garnered various awards that were won at both the corporate as well as hotel property levels.<br><br>
	In 2013, the company was awarded the prestigious ASEAN outstanding Business Award (Master Class Category) in Hotel Industry by ASEAN Franchise Expo and Symposium (AFES).During the same year, SK Hotels was ranked 185th position amongst the top 300 corporate hotel companies and the top 25 consortia, which represent independent hotels as published in a Special Report of a leading international hotel magazine, HOTELS (September 2014).In 2005, the company was awarded the Industry Excellence Award-Export Excellence (Services) .Prior to that, in 2004 it won the National HR Excellence Award in Malaysia.
	<br><br>
	In 1996 the company participated in the prestigious Prime Minister’s Quality Award, Malaysia and was nominated as a finalist amongst more than 30 companies nationwide vying for the award. In 1997, the company participated in the Quality Management Excellence Award organized by the Malaysian Ministry of International Trade and Industry (MITI). Holiday Villa Hotels & Resorts won in the Special Award category which stands as a testimony of the company’s success in providing service excellence through its very own MANJA programme.
	<br><br>
	MALAYSIAN MINISTRY OF INTERNATIONAL TRADE AND INDUSTRY (MALAYSIA) 2005
Industry Excellence Awards – Export Excellence (Services)
<br>
ASPAC EXECUTIVE SEARCH & MALAYSIAN INSTITUTE OF HUMAN RESOURCE MANAGEMENT 2004
National HR Excellence Award
	</b></p>
	
	</div>
	</div>
	</body>
	</html>