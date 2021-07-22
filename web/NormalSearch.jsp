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
String room=request.getParameter("assroom2");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
String roomsearch="select RoomID,RoomType from addnormal where RoomNo=?";
PreparedStatement pss=conn.prepareStatement(roomsearch);
pss.setString(1, room);
ResultSet rs=pss.executeQuery();
if(rs.next())
{%>
<%
session.setAttribute("roomid2",rs.getString(1));
session.setAttribute("roomtype2",rs.getString(2));
session.setAttribute("roomnos2",room);
session.setAttribute("found2","Room Found..!!!");
response.sendRedirect("AssignNormal.jsp");
}
else
{
	session.setAttribute("notfound2","Room not Found...");
	response.sendRedirect("AssignNormal.jsp");
	
}
%>


</body>
</html>