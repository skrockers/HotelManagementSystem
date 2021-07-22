<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" import="java.io.*" import="java.net.URL" import="java.net.URLEncoder" import="javax.net.ssl.HttpsURLConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room Assigned</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<% 
String bookdate=request.getParameter("req1");
String name=request.getParameter("req2");
String email=request.getParameter("req3");
String contact=request.getParameter("req4");
String roomcount=request.getParameter("req5");
String roomtype=request.getParameter("req6");
String checkin=request.getParameter("req7");
String checkout=request.getParameter("req8");
String requestid=request.getParameter("req9");
String roomno=request.getParameter("req10");
String roomid=request.getParameter("req11");
String roomtypes=request.getParameter("req12");


 String names="root";
String pass="12345";
String url="jdbc:mysql://localhost:3306/testing";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,names,pass);
String query="insert into viewReservations(Request_ID,BookingDate,Name,EmailID,ContactNo,RoomCount,RoomType,CheckIn,CheckOut,RoomNo,RoomID,RoomTypes)values(?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,requestid);
ps.setString(2,bookdate);
ps.setString(3,name);
ps.setString(4,email);
ps.setString(5,contact);
ps.setString(6,roomcount);
ps.setString(7,roomtype);
ps.setString(8,checkin);
ps.setString(9,checkout);
ps.setString(10,roomno);
ps.setString(11,roomid);
ps.setString(12,roomtypes);
int count1=ps.executeUpdate();
if(count1==1)
{
	String del="delete from custreservations where Request_ID=?";
	 ps=con.prepareStatement(del);
	 ps.setString(1,requestid);
	 int count2=ps.executeUpdate();
	 if(count2==1)
	 {
		 String delroom="delete from addluxury where RoomNo=?";
		 ps=con.prepareStatement(delroom);
		 ps.setString(1,roomno);
		 int count3=ps.executeUpdate(); 
			 String number=contact;
			String message="SKHotels,Congratulations your Room has been successfully Booked with us.Your RoomNo is  "+roomno+" "+"and RoomType is  "+roomtypes;
			 String Apikey="RxOTNmPXezAfyHlQY8EvqpwMFjt2uVnds9aIcgr06WhBobDGC3ogX9cnLaVuUPFyljWrMTNtEYbqO4H0";
			 String senderid="FSTSMS";
			 message=URLEncoder.encode(message, "UTF-8");
			 String language="english";
		     String route="p";
		     String myurl="https://www.fast2sms.com/dev/bulk?authorization="+Apikey+"&sender_id="+senderid+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number;
		     URL urls=new URL(myurl);
		     HttpsURLConnection connect=(HttpsURLConnection)urls.openConnection();
		     connect.setRequestMethod("GET");
		     connect.setRequestProperty("User-Agent","Chrome");
		     connect.setRequestProperty("cache-control","no-cache");
		     int code=connect.getResponseCode();
		     session.setAttribute("code",code);
		     StringBuffer res=new StringBuffer();
		     BufferedReader br=new BufferedReader(new InputStreamReader(connect.getInputStream()));
		     while(true)
		     {
		         String line=br.readLine();
		         if(line==null)
		         {
		             break;
		         }
		         res.append(line);
		     }
		     session.setAttribute("response",res);

		 
 }
	 String roommsg="Room Confirmed..!!!!";
	 session.setAttribute("roomsg",roommsg);
	 response.sendRedirect("AssignLuxury.jsp");
	 
}
else
{
	session.setAttribute("noroomsg","Something gone wrong.....");
	 response.sendRedirect("AssignLuxury.jsp");
}

%>

</body>
</html>