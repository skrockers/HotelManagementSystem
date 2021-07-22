<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservation</title>
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
input[name=custname],input[name=email],input[name=contact]
{width:300px;}
textarea[name=address]
{width:300px;}

input[type=submit]
{         width:200px;                                     }
#nationality
{     width:250px;                                                           }
#address
{     width:300px;                                                           }
#form
{     width:500px; border-radius: 20px 90px;     } 
input[name="roomno"],input[name=adult],input[name=child]
{      width:200px;     }
#roomtype
{     width:250px;                                                           }

</style>
<script>
function funct()
{
var contact =document.getElementById("contact").value;
if(contact.length < 10) 
{
document.getElementById("cont").innerHTML="Invalid  Number Your Mobile Number must be 10 digits ! !";
return false;
}
if(contact.length >10) 
{
document.getElementById("cont").innerHTML="Invalid  Number ";
return false;
}
if((contact.charAt(0)!=9) &&(contact.charAt(0)!=8) && (contact.charAt(0)!=7) &&(contact.charAt(0)!=6))
	{
	document.getElementById("cont").innerHTML="Number must start with 9,8,7,6 ";
	return false;
	}
document.getElementById("forms").submit();
}

</script>
</head>
<body>
<%

    %>
<div class="container-fluid" id="main" style="background-image:url(q2.png);height:180vh;">
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
									      <li class="nav-item"><a class="nav-link">Welcome, <% 
									      try{
									    	  String ses=session.getAttribute("login").toString();

									    	  if(ses==null)
									    	  {
									    	   session.invalidate();
									    	   response.sendRedirect("CustLog.jsp");
									    	  }
									    	  else
									    	  {
									    	  	out.print(ses);
									    	  }
									      }
									      catch(Exception e)
									      {
									    	  
									      }
									      
									      
									      %></a></li>
									       <li class="nav-item"><a class="nav-link" href="CustLog.jsp">LogOut</a></li>
									</ul>
							</div>
		</div><!-- nav-container -->
	</nav><br>
	
	<%
	try
	{
		String req=session.getAttribute("request").toString();
	%>
	<div class="alert alert-success">
	 <strong>Booking Request Success!!!</strong> <%out.print(req);%>.	
	 </div>
	<%
	session.removeAttribute("request");
	}
	catch(Exception e)
	{
		
	}
	
	%>
	
	
	<%
try{
	String code=session.getAttribute("code").toString();

%>
<div class="alert alert-success">
<strong>SMS report</strong><%out.print(code); %>.
<%session.removeAttribute("code"); %>
</div>
<%
}
catch(Exception e){}%>
 <% 
 try{
	String responses=session.getAttribute("response").toString();

%>
<div class="alert alert-success">
<strong>SMS report</strong><%out.print(responses); %>.
<%session.removeAttribute("code"); %>
</div>
<%
}
catch(Exception e){}%>

<div class="container bg-warning" id="form">
<a  href="CustHomePage.jsp"style="margin-left:300px;"class="btn btn-primary">Back</a>
<h2 >RESERVATION</h2>
<br>
<form  action="ConfirmDetails.jsp" onsubmit="return funct() "method="post" id="forms">
	<div class="form-group">
			<label for="custname"><b>Name</b></label>
			<input type="text" class="form-control" name="custname" id="custname"required>
			<span id="namemsg"></span>
		</div>
	<div class="form-group">
			<label for="email"><b>Email-ID</b></label>
			<input type="email" class="form-control" name="email" id="email"required>
			<span id="emailid"></span>
		</div>
		<div class="form-group">
			<label for="contact"><b>ContactNo</b></label>
			<input type="number" class="form-control" name="contact" id="contact"required>
			<span id="cont"></span>
		</div>
		<div class="form-group">
			<label for="nationality"><b>Nationality</b></label>
			<select class="form-control"name="nationality"id="nationality"required>
  <option value="">-- select one --</option>
  <option value="afghan">Afghan</option>
  <option value="albanian">Albanian</option>
  <option value="algerian">Algerian</option>
  <option value="american">American</option>
  <option value="andorran">Andorran</option>
  <option value="angolan">Angolan</option>
  <option value="antiguans">Antiguans</option>
  <option value="argentinean">Argentinean</option>
  <option value="armenian">Armenian</option>
  <option value="australian">Australian</option>
  <option value="austrian">Austrian</option>
  <option value="azerbaijani">Azerbaijani</option>
  <option value="bahamian">Bahamian</option>
  <option value="bahraini">Bahraini</option>
  <option value="bangladeshi">Bangladeshi</option>
  <option value="barbadian">Barbadian</option>
  <option value="barbudans">Barbudans</option>
  <option value="batswana">Batswana</option>
  <option value="belarusian">Belarusian</option>
  <option value="belgian">Belgian</option>
  <option value="belizean">Belizean</option>
  <option value="beninese">Beninese</option>
  <option value="bhutanese">Bhutanese</option>
  <option value="bolivian">Bolivian</option>
  <option value="bosnian">Bosnian</option>
  <option value="brazilian">Brazilian</option>
  <option value="british">British</option>
  <option value="bruneian">Bruneian</option>
  <option value="bulgarian">Bulgarian</option>
  <option value="burkinabe">Burkinabe</option>
  <option value="burmese">Burmese</option>
  <option value="burundian">Burundian</option>
  <option value="cambodian">Cambodian</option>
  <option value="cameroonian">Cameroonian</option>
  <option value="canadian">Canadian</option>
  <option value="cape verdean">Cape Verdean</option>
  <option value="central african">Central African</option>
  <option value="chadian">Chadian</option>
  <option value="chilean">Chilean</option>
  <option value="chinese">Chinese</option>
  <option value="colombian">Colombian</option>
  <option value="comoran">Comoran</option>
  <option value="congolese">Congolese</option>
  <option value="costa rican">Costa Rican</option>
  <option value="croatian">Croatian</option>
  <option value="cuban">Cuban</option>
  <option value="cypriot">Cypriot</option>
  <option value="czech">Czech</option>
  <option value="danish">Danish</option>
  <option value="djibouti">Djibouti</option>
  <option value="dominican">Dominican</option>
  <option value="dutch">Dutch</option>
  <option value="east timorese">East Timorese</option>
  <option value="ecuadorean">Ecuadorean</option>
  <option value="egyptian">Egyptian</option>
  <option value="emirian">Emirian</option>
  <option value="equatorial guinean">Equatorial Guinean</option>
  <option value="eritrean">Eritrean</option>
  <option value="estonian">Estonian</option>
  <option value="ethiopian">Ethiopian</option>
  <option value="fijian">Fijian</option>
  <option value="filipino">Filipino</option>
  <option value="finnish">Finnish</option>
  <option value="french">French</option>
  <option value="gabonese">Gabonese</option>
  <option value="gambian">Gambian</option>
  <option value="georgian">Georgian</option>
  <option value="german">German</option>
  <option value="ghanaian">Ghanaian</option>
  <option value="greek">Greek</option>
  <option value="grenadian">Grenadian</option>
  <option value="guatemalan">Guatemalan</option>
  <option value="guinea-bissauan">Guinea-Bissauan</option>
  <option value="guinean">Guinean</option>
  <option value="guyanese">Guyanese</option>
  <option value="haitian">Haitian</option>
  <option value="herzegovinian">Herzegovinian</option>
  <option value="honduran">Honduran</option>
  <option value="hungarian">Hungarian</option>
  <option value="icelander">Icelander</option>
  <option value="indian">Indian</option>
  <option value="indonesian">Indonesian</option>
  <option value="iranian">Iranian</option>
  <option value="iraqi">Iraqi</option>
  <option value="irish">Irish</option>
  <option value="israeli">Israeli</option>
  <option value="italian">Italian</option>
  <option value="ivorian">Ivorian</option>
  <option value="jamaican">Jamaican</option>
  <option value="japanese">Japanese</option>
  <option value="jordanian">Jordanian</option>
  <option value="kazakhstani">Kazakhstani</option>
  <option value="kenyan">Kenyan</option>
  <option value="kittian and nevisian">Kittian and Nevisian</option>
  <option value="kuwaiti">Kuwaiti</option>
  <option value="kyrgyz">Kyrgyz</option>
  <option value="laotian">Laotian</option>
  <option value="latvian">Latvian</option>
  <option value="lebanese">Lebanese</option>
  <option value="liberian">Liberian</option>
  <option value="libyan">Libyan</option>
  <option value="liechtensteiner">Liechtensteiner</option>
  <option value="lithuanian">Lithuanian</option>
  <option value="luxembourger">Luxembourger</option>
  <option value="macedonian">Macedonian</option>
  <option value="malagasy">Malagasy</option>
  <option value="malawian">Malawian</option>
  <option value="malaysian">Malaysian</option>
  <option value="maldivan">Maldivan</option>
  <option value="malian">Malian</option>
  <option value="maltese">Maltese</option>
  <option value="marshallese">Marshallese</option>
  <option value="mauritanian">Mauritanian</option>
  <option value="mauritian">Mauritian</option>
  <option value="mexican">Mexican</option>
  <option value="micronesian">Micronesian</option>
  <option value="moldovan">Moldovan</option>
  <option value="monacan">Monacan</option>
  <option value="mongolian">Mongolian</option>
  <option value="moroccan">Moroccan</option>
  <option value="mosotho">Mosotho</option>
  <option value="motswana">Motswana</option>
  <option value="mozambican">Mozambican</option>
  <option value="namibian">Namibian</option>
  <option value="nauruan">Nauruan</option>
  <option value="nepalese">Nepalese</option>
  <option value="new zealander">New Zealander</option>
  <option value="ni-vanuatu">Ni-Vanuatu</option>
  <option value="nicaraguan">Nicaraguan</option>
  <option value="nigerien">Nigerien</option>
  <option value="north korean">North Korean</option>
  <option value="northern irish">Northern Irish</option>
  <option value="norwegian">Norwegian</option>
  <option value="omani">Omani</option>
  <option value="pakistani">Pakistani</option>
  <option value="palauan">Palauan</option>
  <option value="panamanian">Panamanian</option>
  <option value="papua new guinean">Papua New Guinean</option>
  <option value="paraguayan">Paraguayan</option>
  <option value="peruvian">Peruvian</option>
  <option value="polish">Polish</option>
  <option value="portuguese">Portuguese</option>
  <option value="qatari">Qatari</option>
  <option value="romanian">Romanian</option>
  <option value="russian">Russian</option>
  <option value="rwandan">Rwandan</option>
  <option value="saint lucian">Saint Lucian</option>
  <option value="salvadoran">Salvadoran</option>
  <option value="samoan">Samoan</option>
  <option value="san marinese">San Marinese</option>
  <option value="sao tomean">Sao Tomean</option>
  <option value="saudi">Saudi</option>
  <option value="scottish">Scottish</option>
  <option value="senegalese">Senegalese</option>
  <option value="serbian">Serbian</option>
  <option value="seychellois">Seychellois</option>
  <option value="sierra leonean">Sierra Leonean</option>
  <option value="singaporean">Singaporean</option>
  <option value="slovakian">Slovakian</option>
  <option value="slovenian">Slovenian</option>
  <option value="solomon islander">Solomon Islander</option>
  <option value="somali">Somali</option>
  <option value="south african">South African</option>
  <option value="south korean">South Korean</option>
  <option value="spanish">Spanish</option>
  <option value="sri lankan">Sri Lankan</option>
  <option value="sudanese">Sudanese</option>
  <option value="surinamer">Surinamer</option>
  <option value="swazi">Swazi</option>
  <option value="swedish">Swedish</option>
  <option value="swiss">Swiss</option>
  <option value="syrian">Syrian</option>
  <option value="taiwanese">Taiwanese</option>
  <option value="tajik">Tajik</option>
  <option value="tanzanian">Tanzanian</option>
  <option value="thai">Thai</option>
  <option value="togolese">Togolese</option>
  <option value="tongan">Tongan</option>
  <option value="trinidadian or tobagonian">Trinidadian or Tobagonian</option>
  <option value="tunisian">Tunisian</option>
  <option value="turkish">Turkish</option>
  <option value="tuvaluan">Tuvaluan</option>
  <option value="ugandan">Ugandan</option>
  <option value="ukrainian">Ukrainian</option>
  <option value="uruguayan">Uruguayan</option>
  <option value="uzbekistani">Uzbekistani</option>
  <option value="venezuelan">Venezuelan</option>
  <option value="vietnamese">Vietnamese</option>
  <option value="welsh">Welsh</option>
  <option value="yemenite">Yemenite</option>
  <option value="zambian">Zambian</option>
  <option value="zimbabwean">Zimbabwean</option>
</select>
<span id="cont"></span>
		</div>
		<div class="form-group">
			<label for="address"><b>Address</b></label>
		<textarea class="form-control" rows="3" name="address" id="address"required></textarea>
		</div>
		<div class="col">
			<label for="roomno"><b>No. of Rooms</b></label>
			<input type="text" class="form-control" name="roomno" id="roomno"required>
			<span id="cont"></span>
		</div>
		<div class="col">
			<label for="col"><b>Room Types</b></label>
			<select class="form-control"name="roomtype"id="roomtype"required>
			<option value="">-- select one --</option>
			<option>Luxury-King</option>
			<option>Luxury-Queen</option>
			<option>Luxury-Standard</option>
			<option>Deluxe-King</option>
			<option>Deluxe-Queen</option>
			<option>Deluxe-Standard</option>
			<option>Normal-King</option>
			<option>Normal-Queen</option>
			<option>Normal-Standard</option>
			</select>
			</div>
		
		<div class="form-row">
				<div class="col">
			<label for="adult"><b>No. of Adults</b></label>
			<input type="text" class="form-control" name="adult" id="adult"required>
			<span id="cont"></span>
		</div>
		<div class="col">
			<label for="child"><b>No. of Children</b></label>
			<input type="text" class="form-control" name="child" id="child"required>
			<span id="cont"></span>
		</div>
		<div class="col">
			<label for="checkin"><b>Check-in</b></label>
			<input type="date" class="form-control" name="checkin" id="checkin"required>
			<span id="cont"></span>
		</div>
		<div class="col">
			<label for="checkout"><b>Check-out</b></label>
			<input type="date" class="form-control" name="checkout" id="checkout"required>
			<span id="cont"></span>
		</div>
		</div>
		<br><br>
		<div class="form-group ">
			<input type="submit"  style="margin-left:100px;"class="form-control text-dark bg-success " value ="Book Now"name="signup" id="signup"><br>
		</div>
		
	
</form>

</div>
<footer class="page-footer bg-warning">
		<div class="container-fluid text-center">
			<div class="row">
				<div class="col -md-6 text-center">
					<h5 >SK HOTELS</h5>
					<p>One of the best Hotel in the city.</p>
				</div>
			</div>
		</div>
	<div class="footer-copyright bg-warning text-center">© 2020 BY SK HOTELS | ALL RIGHTS RESERVED</div>



</div>
</body>
</html>