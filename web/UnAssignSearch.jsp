<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String roomno=request.getParameter("rnum");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
String search="select * from viewreservations where RoomNo=?";
PreparedStatement pss=conn.prepareStatement(search);
pss.setString(1,roomno);
ResultSet rst=pss.executeQuery();
if(rst.next()){ 
session.setAttribute("r1",rst.getString(10));
session.setAttribute("r2",rst.getString(11));
session.setAttribute("r3",rst.getString(12));
session.setAttribute("r4",rst.getString(1));
session.setAttribute("r5",rst.getString(2));
session.setAttribute("r6",rst.getString(3));
session.setAttribute("r7",rst.getString(4));
session.setAttribute("r8",rst.getString(5));
session.setAttribute("r9",rst.getString(6));
session.setAttribute("r10",rst.getString(7));
session.setAttribute("r11",rst.getString(8));
session.setAttribute("r12",rst.getString(9));
session.setAttribute("found","Room found...");
response.sendRedirect("UnAssignRoom.jsp");
}
else
{
	session.setAttribute("unfound","Room not found...");
	response.sendRedirect("UnAssignRoom.jsp");
	
}
%>
</body>
</html>