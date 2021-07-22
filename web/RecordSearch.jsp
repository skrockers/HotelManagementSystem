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
String searching=request.getParameter("recordsearch");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
	String querys="select * from OldRecords where Request_ID=?";
	PreparedStatement pss=cons.prepareStatement(querys);
	pss.setString(1,searching);
	ResultSet rst=pss.executeQuery();
	if(rst.next())
	{
		
		session.setAttribute("sr1",rst.getString(1)); 
		session.setAttribute("sr2",rst.getString(2)); 
		session.setAttribute("sr3",rst.getString(3)); 
		session.setAttribute("sr4",rst.getString(4)); 
		session.setAttribute("sr5",rst.getString(5)); 
		session.setAttribute("sr6",rst.getString(6)); 
		session.setAttribute("sr7",rst.getString(7)); 
		session.setAttribute("sr8",rst.getString(8)); 
		session.setAttribute("sr9",rst.getString(9)); 
		session.setAttribute("sr10",rst.getString(10)); 
		session.setAttribute("sr11",rst.getString(11)); 
		session.setAttribute("sr12",rst.getString(12)); 
		session.setAttribute("founds","RequestID found!!");
		response.sendRedirect("Records.jsp");
		
		%>
<%}else
{
	session.setAttribute("notfounds","RequestID not found...");
	response.sendRedirect("Records.jsp");
} %>

</body>
</html>