<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement,java.util.List, java.util.LinkedList, hotel.management.Javaclasscabrequest,hotel.management.Javadatabaseconnection,hotel.management.Cookies,java.sql.ResultSet, java.sql.Statement, java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAB-LIST</title>
<style>
.main-content{
width:512px;
margin:150px auto;
}
</style>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css" type="text/css" />
</head>
<body>
	<a href="administratorprofile.jsp" class="btn btn-primary btn-lg active" role="button">Profile</a>   
	<form class="form-horizontal center-content" >    
 	<table class = "table table-bordered" border="2" width=50%>
    <tr><td>Customer Id</td>
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
	if(cks[i].getName().equals("auth_drivername")) {
		id=cks[i].getValue();
		
	}
	}	
	}
	List<Javaclasscabrequest> lteration = new LinkedList<Javaclasscabrequest>();
	Javadatabaseconnection db = new Javadatabaseconnection();
	PreparedStatement ps = db.getPS("SELECT * FROM CABSERVICES  ");
	ResultSet rs = ps.executeQuery();
	while( rs.next() ){
	 lteration.add( new Javaclasscabrequest(rs.getInt(1), rs.getString(2), rs.getInt(3),rs.getInt(4) ) );
	}
	for(Javaclasscabrequest each:lteration){
	out.println("<tr><td>"+each.getCustomerid()+"</td><td>"+each.getDrivername()+"</td><td>"+each.getDriverphone()+"</td><td>"+ each.getCarno()+"</td>");
	}
 	%>
 	</table>
	<br>
	</br>
</body>
</html>