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
String rdf=session.getAttribute("r1").toString();

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testing","root","12345");
String query="insert into oldrecords select * from viewreservations where RoomNo=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,rdf);
int Var1=ps.executeUpdate();
if(Var1==1)
{
	if(rdf.startsWith("3"))
	{
		String AddLux="insert into addluxury select RoomNo,RoomID,RoomTypes from viewreservations where RoomNo=?";
		ps=con.prepareStatement(AddLux);
		ps.setString(1,rdf);
		int subvar1=ps.executeUpdate();
			if(subvar1==1)
			{
				String delete="delete from viewreservations where RoomNo=?";
				ps=con.prepareStatement(delete);
				ps.setString(1,rdf);
				int count1=ps.executeUpdate();
			}
	}
	else if(rdf.startsWith("2"))
	{
		String AddDel="insert into adddeluxe select RoomNo,RoomID,RoomTypes from viewreservations where RoomNo=?";
		ps=con.prepareStatement(AddDel);
		ps.setString(1,rdf);
		int subvar2=ps.executeUpdate();
			if(subvar2==1)
			{
					String delete="delete from viewreservations where RoomNo=?";
					ps=con.prepareStatement(delete);
					ps.setString(1,rdf);
					int count2=ps.executeUpdate();

			}
	}
	else if(rdf.startsWith("1"))
	{
		String AddNor="insert into addnormal select RoomNo,RoomID,RoomTypes from viewreservations where RoomNo=?";
		ps=con.prepareStatement(AddNor);
		ps.setString(1,rdf);
		int subvar3=ps.executeUpdate();
		if(subvar3==1)
		{
				String delete="delete from viewreservations where RoomNo=?";
				ps=con.prepareStatement(delete);
				ps.setString(1,rdf);
				int count3=ps.executeUpdate();

		}
	}
}
session.setAttribute("oldrecords","Moved to old records");
response.sendRedirect("UnAssignRoom.jsp");	


%>
</body>
</html>