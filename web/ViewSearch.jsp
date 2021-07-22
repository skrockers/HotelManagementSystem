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
String searching=request.getParameter("viewsearch");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
	String querys="select * from viewreservations where Request_ID=?";
	PreparedStatement pss=cons.prepareStatement(querys);
	pss.setString(1,searching);
	ResultSet rst=pss.executeQuery();
	if(rst.next())
	{
		
		session.setAttribute("sv1",rst.getString(1)); 
		session.setAttribute("sv2",rst.getString(2)); 
		session.setAttribute("sv3",rst.getString(3)); 
		session.setAttribute("sv4",rst.getString(4)); 
		session.setAttribute("sv5",rst.getString(5)); 
		session.setAttribute("sv6",rst.getString(6)); 
		session.setAttribute("sv7",rst.getString(7)); 
		session.setAttribute("sv8",rst.getString(8)); 
		session.setAttribute("sv9",rst.getString(9)); 
		session.setAttribute("sv10",rst.getString(10)); 
		session.setAttribute("sv11",rst.getString(11)); 
		session.setAttribute("sv12",rst.getString(12)); 
		session.setAttribute("viewfound","RequestID found!!");
		response.sendRedirect("ViewReservation.jsp");
		
		%>
<%}else
{
	session.setAttribute("notviewfound","RequestID not found...");
	response.sendRedirect("ViewReservation.jsp");
} %>

</body>
</html>