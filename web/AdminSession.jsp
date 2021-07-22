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
	String Name=request.getParameter("username");
    String Password=request.getParameter("password");

	String name="root";
    String pass="12345";
    String url="jdbc:mysql://localhost:3306/testing";
	String dbname=null;
    String dbpass=null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection(url,name,pass);
    String query="select *from adminregister where Name=? and Password=?";
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1,Name);
    ps.setString(2,Password);
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	dbname=rs.getString(2);
        dbpass=rs.getString(3);	
    }
    if(Name.equals(dbname) && (Password.equals(dbpass)))
  	{
    		session.setAttribute("admin",Name);
    	response.sendRedirect("AdminHomePage.jsp");
	}
  else
  {
  session.setAttribute("error","Invalid Username or Password");
 	response.sendRedirect("AdminLog.jsp");
  }
%>
</body>
</html>