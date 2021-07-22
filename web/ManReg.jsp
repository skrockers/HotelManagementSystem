<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager Registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
li
{    width:120px;                              }
#car
{  height:500px;                               }
#main
{height:100vh;                                     }
input[type=text],input[type=password],input[type=email],input[type=number]
{  width:250px;                                                                                }
input[type=submit]
{         width:200px;                                     }
#form
{     width:500px;border-radius: 20px 90px;   } 
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
<script>
	function funct()
	{
		var correct=/^[A-Za-z]+$/;
		var name=document.getElementById("name").value;
		
		if(name=="")
			{
			document.getElementById("namemsg").innerHTML="Username can't be empty ! !";
			return false;
			}
		if(name.length<3)
			{
			document.getElementById("namemsg").innerHTML="Minimum 3-20 character allowed";
			return false;
			}
		if(name.length>20)
		{
		document.getElementById("namemsg").innerHTML="more than 20 character not allowed";
		return false;
		}
		if(name.match(correct))
			true;
		else{
			document.getElementById("namemsg").innerHTML="Numeric or special characters not allowed..";
			return false;
		}
		/* ------------------------------------------- */
		var password=document.getElementById("password").value;	
		var confirm =document.getElementById("confirm").value;
		
		if(password=="")
		{
		document.getElementById("pass1").innerHTML="Password can't be empty ! !";
		return false;
		}
		if(confirm=="")
		{
		document.getElementById("pass2").innerHTML="Password can't be empty ! !";
		return false;
		}
		if(password.length<3)
		{
		document.getElementById("pass1").innerHTML="Password must be greater than 3 characters";
		return false;
		}
		if(confirm.length<3)
		{
		document.getElementById("pass2").innerHTML="Password must be greater than 3 characters";
		return false;
		}
		if(password.length>10)
		{
		document.getElementById("pass1").innerHTML="Password must be less than 10 characters";
		return false;
		}
		if(confirm.length>10)
		{
		document.getElementById("pass2").innerHTML="Password must be less than 10 characters";
		return false;
		}
		if(password!=confirm)
			{
			document.getElementById("pass2").innerHTML="Password not matching";
			return false;
			}
		var email=document.getElementById("email").value;	
		var contact =document.getElementById("contact").value;
		if(email=="")
		{
		document.getElementById("emailid").innerHTML="Email can't be empty ! !";
		return false;
		}
		if(contact=="")
		{
		document.getElementById("cont").innerHTML="ContactNo can't be empty ! !";
		return false;
		}
		document.getElementById("myform").submit();
			
			
			

	} 
	



</script>

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
									    <li class="nav-item"><a class="nav-link" href="">SIGNUP</a></li>
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav><br>
	<div class="container ">
	<%
	try
	{
		String msg=session.getAttribute("msg").toString();
	%>
	<h2 class="text-center"style="color:green;"><% out.print(msg);%></h2>	
	<%
	session.removeAttribute("msg");
	}
	catch(Exception e)
	{
		
	}
	
	%>
	</div>
	<div class="container bg-warning" id="form">
	<h1>Manager Registration</h1><br>
	<form action="ManNotify.jsp"method="post"onsubmit="return funct() "id ="myform">
		<div class="form-group">
			<label for="name"><b>Name</b></label>
			<input type="text" class="form-control" name="name" id="name">
			<span id="namemsg"></span>
		</div>
		<div class="form-group">
			<label for="password"><b>Password</b></label>
			<input type="password" class="form-control" name="password" id="password">
			<span id="pass1"></span>
		</div>
		<div class="form-group">
			<label for="confirm"><b>Confirm Password</b></label>
			<input type="password" class="form-control" name="confirm" id="confirm">
			<span id="pass2"></span>
		</div>
		<div class="form-group">
			<label for="email"><b>Email-ID</b></label>
			<input type="email" class="form-control" name="email" id="email">
			<span id="emailid"></span>
		</div>
		<div class="form-group">
			<label for="contact"><b>ContactNo</b></label>
			<input type="number" class="form-control" name="contact" id="contact">
			<span id="cont"></span>
		</div>
		<div class="form-group">
			<input type="submit"  class="form-control text-dark bg-success " value ="Signup"name="signup" id="signup"><br>
			<p><b>or Already have Account?<a href="CustLog.jsp" class="text-danger">Login Now</a></b></p>
		</div><br>
	</form>
	</div><br>

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