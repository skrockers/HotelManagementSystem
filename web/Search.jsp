<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String room=request.getParameter("assroom");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
String roomsearch="select RoomID,RoomType from addluxury where RoomNo=?";
PreparedStatement pss=conn.prepareStatement(roomsearch);
pss.setString(1, room);
ResultSet rs=pss.executeQuery();
if(rs.next())
{%>
<%
session.setAttribute("roomid",rs.getString(1));
session.setAttribute("roomtype",rs.getString(2));
session.setAttribute("roomnos",room);
session.setAttribute("found","Room Found..!!!");
response.sendRedirect("AssignLuxury.jsp");
}
else
{
	session.setAttribute("notfound","Room not Found...");
	response.sendRedirect("AssignLuxury.jsp");
	
}
%>


</body>
</html>