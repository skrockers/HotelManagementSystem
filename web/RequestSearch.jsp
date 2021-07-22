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
String searching=request.getParameter("search");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
	String querys="select * from custreservations where Request_ID=?";
	PreparedStatement pss=cons.prepareStatement(querys);
	pss.setString(1,searching);
	ResultSet rst=pss.executeQuery();
	if(rst.next())
	{
		
		session.setAttribute("s1",rst.getString(1)); 
		session.setAttribute("s2",rst.getString(2)); 
		session.setAttribute("s3",rst.getString(3)); 
		session.setAttribute("s4",rst.getString(4)); 
		session.setAttribute("s5",rst.getString(5)); 
		session.setAttribute("s6",rst.getString(6)); 
		session.setAttribute("s7",rst.getString(7)); 
		session.setAttribute("s8",rst.getString(8)); 
		session.setAttribute("s9",rst.getString(9)); 
		session.setAttribute("s10",rst.getString(10)); 
		session.setAttribute("s11",rst.getString(11)); 
		session.setAttribute("s12",rst.getString(12)); 
		session.setAttribute("s13",rst.getString(13)); 
		session.setAttribute("s14",rst.getString(14));
		session.setAttribute("found","RequestID found!!");
		response.sendRedirect("ViewRequest.jsp");
		
		%>
<%}else
{
	session.setAttribute("notfound","RequestID not found...");
	response.sendRedirect("ViewRequest.jsp");
} %>

</body>
</html>