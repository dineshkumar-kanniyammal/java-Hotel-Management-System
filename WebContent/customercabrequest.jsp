<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement,java.util.List, java.util.LinkedList, hotel.management.Javaclasscustomerservices,hotel.management.Javadatabaseconnection,hotel.management.Cookies,java.sql.ResultSet, java.sql.Statement, java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAB-LIST</title>
<style>
.main-content{
width:300px;
margin:100px auto;
}
</style>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css" type="text/css" />
</head>
<body>
	<div>
	<div class="main-content">
  	<a href="customerprofile.jsp" class="btn btn-primary btn-lg active" role="button">Profile</a> 
 	</div>
	<form class="form-horizontal center-content" >    
 	<table class = "table table-bordered" border="3" width=100%>
 	<tr><td>phone</td>
 	<td>Driver Name</td>
  	<td>Driver Phone</td>
  	<td>CarNo</td>
 	</tr>
  	</form>
	<%
	Cookie cks[] = request.getCookies();
	int i;
	String id = null;
	if(cks != null) {
	for(i = 0; i < cks.length; i++) {
		if(cks[i].getName().equals("user")) {
			id=cks[i].getValue();	
	}
	}
	}
	List<Javaclasscustomerservices> lteration = new LinkedList<Javaclasscustomerservices>();
	Javadatabaseconnection db = new Javadatabaseconnection();
	PreparedStatement ps = db.getPS("SELECT * FROM CABSERVICES WHERE CUSTOMERID=? ");
	ps.setString(1,id);
	ResultSet rs = ps.executeQuery();
	while( rs.next())
		{
	 lteration.add( new Javaclasscustomerservices(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4)) );
	}
	for(Javaclasscustomerservices each:lteration){
	 out.println("<tr><td>"+ each.getCustomerid()+"</td><td>"+ each.getDrivername()+"</td><td>"+ each.getDriverphone() +"</td><td>"+each.getCarno()+"</td>");	
	}
 	%>
 	</table>
	<br>
	</br>
</body>
</html>