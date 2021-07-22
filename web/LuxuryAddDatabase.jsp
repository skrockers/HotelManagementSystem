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
<h1>Hello</h1>
<%
String rtype=request.getParameter("rtype");
String rno=request.getParameter("rno");
String rid=request.getParameter("rid");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
String query="insert into AddLuxury(RoomNo,RoomID,RoomType)values(?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,rno);
ps.setString(2,rid);
ps.setString(3,rtype);
int count=ps.executeUpdate();
session.setAttribute("addluxury","Luxury Room Added...");
response.sendRedirect("AddLuxury.jsp");
%>
</body>
</html>