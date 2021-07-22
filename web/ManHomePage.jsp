<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager</title>
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
	<%
try
{
	String name="root";
    String pass="12345";
    String url="jdbc:mysql://localhost:3306/testing";
    String Name=request.getParameter("name");
    String Password=request.getParameter("password");
    %>
	

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
									    <li class="nav-item"><a class="nav-link" href="#">SIGNUP</a></li>
									     <li class="nav-item"><a class="nav-link">Welcome, <% 
									    		  try
									  	{
									  		String ses=session.getAttribute("login").toString();
									  		out.print(ses);
									  	}
									  	catch(Exception e)
									  	{
									  		
									  	}
									  	
									      
									      %></a></li>
									       <li class="nav-item"><a class="nav-link" href="ManLog.jsp">LogOut</a></li>
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav><br>
	<div class="container-fluid bg-warning">
	<h1></h1>
	<br>
	<br>
	<br>

	
	
	</div>
	</div>
	<%
	String dbname=null;
    String dbpass=null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection(url,name,pass);
    String query="select *from manregister where Name=? and Password=?";
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1,Name);
    ps.setString(2,Password);
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	dbname=rs.getString(2);
        dbpass=rs.getString(3);	
    }
    if(Name.equals(dbname) && (Password.equals(dbpass)))
  	{
    	out.println("<script type=\"text/javascript\">");
        out.println("alert('Login Successfully')");
        out.println("</script>");

  	}
  else
  {
	  out.println("<script type=\"text/javascript\">");
      out.println("alert('Invalid Username or Password...')");
      out.println("location='ManLog.jsp';");
      out.println("</script>");
  }
}
catch(Exception e)
{
	out.println(e);
}


	%>
	</body>
	</html>