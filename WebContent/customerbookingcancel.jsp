<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, java.sql.ResultSet,
hotel.management.Javadatabaseconnection, hotel.management.Cookies, java.sql.Statement,
java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RoomBooking</title>
</head>
<body>
<%
String identity = request.getParameter("id");
out.println(identity);
Javadatabaseconnection db = new Javadatabaseconnection();
PreparedStatement ps = db.getPS("DELETE FROM USERDETAILS WHERE CUSTOMERID = ?");
ps.setString(1, identity);
ps.executeUpdate();
PreparedStatement ps1 = db.getPS("DELETE FROM ROOMDETAILS WHERE  CUSTOMERID= ?");
ps1.setString(1, identity);
ps1.executeUpdate();
out.println("Booking cancel Success");
out.println("<meta http-equiv='refresh' content='5,url=customerprofile.jsp'/>");
%>
</body>
</html>