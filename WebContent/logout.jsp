<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.PreparedStatement,java.util.List, java.util.LinkedList,hotel.management.Javadatabaseconnection,hotel.management.Cookies,java.sql.ResultSet, java.sql.Statement, java.sql.Connection" %>
     
<meta http-equiv="refresh" content="3;url=HotelHome.html" />
<%
Cookie cks[] = request.getCookies();
int i;
for(i = 0; i < cks.length; i++) {
	if(cks[i].getName().equals("user")) {
		cks[i].setValue("");
		cks[i].setMaxAge(0);
		response.addCookie(cks[i]);
		break;
	}
}
%>
<div>Logging out....</div>
