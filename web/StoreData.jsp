<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" import="java.io.*" import="java.net.URL" import="java.net.URLEncoder" import="javax.net.ssl.HttpsURLConnection"%>
     <%@ page import = "java.io.*,java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Date current=new Date();
SimpleDateFormat sdf=new SimpleDateFormat();
java.sql.Date sqldate;
sqldate=new java.sql.Date(current.getTime());
    %>
<%
String data0=request.getParameter("account");
String data1=request.getParameter("cname");
String data2=request.getParameter("cemail");
String contact=request.getParameter("ccontact");
String data4=request.getParameter("cnationality");
String data5=request.getParameter("caddress");
String data6=request.getParameter("croom");
String data7=request.getParameter("croomtype");
String data8=request.getParameter("cadult");
String data9=request.getParameter("cchild");
String data10=request.getParameter("ccheckin");
String data11=request.getParameter("ccheckout");
/* out.print(data0);
out.println(data1);
out.println(data2);
out.println(data3);
out.println(data4);
out.println(data5);
out.println(data6);
out.println(data7);
out.println(data8);
out.println(data9);
out.println(data10);
out.println(data11); 
 */
String name="root";
String pass="12345";
String url="jdbc:mysql://localhost:3306/testing";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,name,pass);
String query="insert into custreservations(BookingDate,LoginName,Name,EmailID,ContactNo,Nationality,Address,RoomCount,RoomType,AdultCount,ChildCount,CheckIn,CheckOut)values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setDate(1,sqldate);
ps.setString(2,data0);
ps.setString(3,data1);
ps.setString(4,data2);
ps.setString(5,contact);
ps.setString(6,data4);
ps.setString(7,data5);
ps.setString(8,data6);
ps.setString(9,data7);
ps.setString(10,data8);
ps.setString(11,data9);
ps.setString(12,data10);
ps.setString(13,data11);
int count=ps.executeUpdate();
if(count==1)
{
	/* String number=contact;
	String message="Welcome to SKHotels,Thankyou for Booking with us.We  need to verify your Booking with the our servers. You will shortly receive a reply from our Team regarding Confirmation of Booking";
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


 */     String successmsg="Thankyou for Booking with us.We  need to verify your Booking with the our servers. You will shortly receive a reply from our Team regarding Confirmation of Booking";
     session.setAttribute("request",successmsg);
     response.sendRedirect("CustReservation.jsp");
}









%>
</body>
</html>