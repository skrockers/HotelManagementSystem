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
height:100vh;
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
<div class="container-fluid" id="main"style="background-image:url(back2.png);">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark " id="navhover">
		<div class="container">
				<a href="" class="navbar-brand"id="brandhover">SK HOTELS</a>
					<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarid">
						<span class="navbar-toggler-icon"></span>
						</button>
							<div class="collapse navbar-collapse" id="navbarid">
									<ul class="navbar-nav text-center" id="ulhover">
										<li class="nav-item"><a class="nav-link" href="">HOME</a></li>
										<li class="nav-item"><a class="nav-link" href="Gallery.jsp">GALLERY</a></li>
										<li class="nav-item" ><a class="nav-link" href="">HOTELS</a></li>
										<li class="nav-item" ><a class="nav-link" href="AboutUs.jsp">ABOUTUS</a></li>
										<li class="nav-item"><a class="nav-link" href="">CONTACTUS</a></li>
										<li class="nav-item dropdown" ><a class="nav-link dropdown-toggle"data-toggle="dropdown" href="">LOGIN</a>
											<ul class="dropdown-menu">
												<li><a href="CustLog.jsp" class="dropdown-item"> CUSTOMER</a></li>
												<li><a href="ManLog.jsp" class="dropdown-item"></a></li>
												<li><a href="EmpLog.jsp" class="dropdown-item"></a></li>
												<li><a href="AdminLog.jsp" class="dropdown-item">ADMIN</a></li>
											</ul>
										
										</li>	
									    <li class="nav-item"><a class="nav-link" href="CustReg.jsp">SIGNUP</a></li>
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav>
	<div class="container-fluid">
	<div class="carousel slide" id="myslide" data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="gif2.gif" width="100%;" height="550px;">
			</div>
			<div class="carousel-item">
				<img src="sk5.png" width="100%">
			</div>
			<div class="carousel-item">
				<img src="tk.png" width="100%">
			</div>
			<div class="carousel-item">
				<img src="sk6.png" width="100%">
			</div>
			<ul class="carousel-indicators">
				<li data-target="#myslide"data-slide-to="0"class="active"></li>
				<li data-target="#myslide"data-slide-to="1"class=""></li>
				<li data-target="#myslide"data-slide-to="2"class=""></li>
				<li data-target="#myslide"data-slide-to="3"class=""></li>			
			</ul>
			<a href="#myslide" data-slide="prev"class="carousel-control-prev">
			<span class="carousel-control-prev-icon"></span>
			</a>
			<a href="#myslide" data-slide="next"class="carousel-control-next">
			<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	
	</div>
	</div>
	<div class="container"><h1 class="text-center text-warning">Welcome To SK Hotels</h1></div>
	<br><br>
	</div>
	<header style="background-image:url(th1.png);background-repeat:repeat;width:100%;">
	<div class="container-fluid bg-warning"><h1 class="text-center">Our Hotels</h1></div>
	<div class="container">
			<div class="card-columns">
		<div class="card ">
			<img src="lux4.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Luxury-King</h3>
			<h5>Starting from Rs.2999/-</h5>
			<a href="CustLog.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="lux2.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Luxury-Queen</h3>
			<h5>Starting from Rs.1999/-</h5>
			<a href="CustLog.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="set1.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Luxury-Standard</h3>
			<h5>Starting from Rs.999/-</h5>
			<a href="CustLog.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
	</div>
		<div class="card-columns">
		<div class="card ">
			<img src="dex1.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Deluxe-King</h3>
			<h5>Starting from Rs.1999/-</h5>
			<a href="CustLog.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="dex2.jpg"class="card-img"style="height:200px;">
			<div class="card-body">
			<h3 class="card-title">Deluxe-Queen</h3>
			<h5>Starting from Rs.1999/-</h5>
			<a href="CustLog.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="dex3.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Deluxe-Standard</h3>
			<h5>Starting from Rs.1999/-</h5>
			<a href="CustLog.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
	</div>
	<div class="card-columns">
		<div class="card ">
			<img src="nor1.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Normal-King</h3>
			<h5>Starting from Rs.999/-</h5>
			<a href="CustLog.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="nor2.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Normal-Queen</h3>
			<h5>Starting from Rs.999/-</h5>
			<a href="CustLog.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
		<div class="card">
			<img src="nor3.jpg"class="card-img">
			<div class="card-body">
			<h3 class="card-title">Normal-Standard</h3>
			<h5>Starting from Rs.999/-</h5>
			<a href="CustLog.jsp" class="btn btn-warning">Book Now</a>   <a href="">More details</a>
			</div>
		</div>
	</div>
	
	
	
	
	
	</div>
	</header>
	<header style="background-image:url(tk2.png);">
	<div class="container-fluid bg-warning"><h1 class="text-center">Our Customers Reviews</h1></div>
	<div class="container">
	<br><br>
	<div class="card-columns">
	<div class="card bg-warning" style="border-radius:100px 50px;">
		<img src="user.png" class="card-img"style="width:200px;margin-left:70px;">
			<div class="card-body col-xl-10" >
				<h3 class="card-title">Tony Stark</h3>
				<p class="card-text">-Hotel experience very nice and want more new facilities and need to improve the foods.</p>
			</div>
	</div>
	<div class="card bg-warning"style="border-radius:100px 50px;">
		<img src="user.png" class="card-img"style="width:200px;margin-left:70px;">
			<div class="card-body col-xl-10">
				<h3 class="card-title">Steve Rogers</h3>
				<p class="card-text">-Hotel experience very nice and want more new facilities and need to improve the foods.</p>
			</div>
	</div>
	<div class="card bg-warning"style="border-radius:100px 50px;">
		<img src="user.png" class="card-img"style="width:200px;margin-left:70px;">
			<div class="card-body col-xl-10">
				<h3 class="card-title">Natasha Romanova</h3>
				<p class="card-text">-Hotel experience very nice and want more new facilities and need to improve the foods.</p>
			</div>
	</div>
	</div>
	</div><br><br><br><br><br><br><br><br>
	</header>
		<header style="background-image:url(th1.png);">
			<div class="container-fluid bg-warning"><h1 class="text-center">Our Team</h1></div>
	<div class="container-fluid">
	<br><br>
	<div class="card-columns">
		<div class="card bg-warning"style="border-radius: 50px 130px;width:300px;">
			<img class="card-img"src="owner.png">
			<h3 class="card-title text-center">SK</h3>
			<p class="text-center"><b>(Owner of SK Hotels)</b></p>
		</div>
		<div class="card bg-warning"style="border-radius: 50px 130px;width:300px;">
			<img class="card-img"src="manager.png">
			<h3 class="card-title text-center">Jarvis</h3>
			<p class="text-center"><b>(Manager of SK Hotels)</b></p>
		</div>
		<div class="card bg-warning"style="border-radius: 50px 10px;width:300px;">
			<img class="card-img"src="group.png"style="width:280px;";>
			<h3 class="card-title text-center">Our Employees</h3>
			<p class="text-center"><b>(Employees of SK Hotels)</b></p>
		</div>
	</div>
	</div>
	<br><br><br><br><br><br><br>
	</header>
	<!-- <footer class="page-footer">
		<div class="container-fluid bg-primary text-center">
			<div class="row">
				<div class="col -md-6 text-center">
					<h5 >FOOTER</h5>
					<p>any description of the page</p>
				</div>
			</div>
		</div>
	<div class="footer-copyright bg-primary text-center">2020 Copyright</div>
	
<!-- Footer -->
<footer class="page-footer bg-warning font-small white pt-4">

  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <h1 class="text-uppercase"><a href="">SK HOTELS</a></h1>
        <p>One of the best Hotel in the city.</p>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase">Links</h5>

        <ul class="list-unstyled">
          <li>
            <a href="#!"class="text-danger">Link 1</a>
          </li>
          <li>
            <a href="#!"class="text-danger">Link 2</a>
          </li>
          <li>
            <a href="#!" class="text-danger">Link 3</a>
          </li>
          <li>
            <a href="#!"class="text-danger">Link 4</a>
          </li>
        </ul>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase">Links</h5>

        <ul class="list-unstyled">
          <li>
            <a href class="text-danger""#!">Link 1</a>
          </li>
          <li>
            <a href class="text-danger"="#!">Link 2</a>
          </li>
          <li>
            <a href class="text-danger"="#!">Link 3</a>
          </li>
          <li>
            <a href class="text-danger"="#!">Link 4</a>
          </li>
        </ul>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 BY SK HOTELS | ALL RIGHTS RESERVED
  </div>
  <!-- Copyright -->

</footer>



</body>
</html>