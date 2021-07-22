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
String rtype=request.getParameter("rntype");
String rno=request.getParameter("rnno");
String rid=request.getParameter("rnid");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
String query="insert into AddNormal(RoomNo,RoomID,RoomType)values(?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,rno);
ps.setString(2,rid);
ps.setString(3,rtype);
int count=ps.executeUpdate();
session.setAttribute("addnormal","Normal Room Added...");
response.sendRedirect("AddNormal.jsp");
%>
</body>
</html>