<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement,java.util.List, java.util.LinkedList, hotel.management.Javaclasscabbookinginformation,hotel.management.Javadatabaseconnection,hotel.management.Cookies,java.sql.ResultSet, java.sql.Statement, java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAB-BOOKING</title>
<style>
.main-content{
width:300x;
margin:100px ;
}
</style>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css" type="text/css" />
</head>
<body>
	<div class="main-content">
	<div>
	<a href="customerprofile.jsp" class="btn btn-primary btn-lg active" role="button">Profile</a> 
	</div>
	<form class="form-horizontal" method="get" action="Javacabservicevalidation" >
	<form class="form-horizontal center-content" >    
 	<table class = "table table-bordered" border="2" width=50%>
 	<tr><td>Driver Name</td>
  	<td>Driver Phone</td>
  	<td>CarNo</td>
   	<td>Cartype</td>
 	</tr>
  	</form>
	<%
	Cookie cks[] = request.getCookies();
	int i;
	String id = null;
	if(cks != null) {
	for(i = 0; i < cks.length; i++) {
	if(cks[i].getName().equals("auth_dname")) {
	id=cks[i].getValue();	
	}
	}
	}
	List<Javaclasscabbookinginformation> lteration = new LinkedList<Javaclasscabbookinginformation>();
	Javadatabaseconnection db = new Javadatabaseconnection();
	PreparedStatement ps = db.getPS("SELECT * FROM CABDETAILS  ");
	ResultSet rs = ps.executeQuery();
	while( rs.next() ){
	 lteration.add( new Javaclasscabbookinginformation(rs.getString(1), rs.getInt(2), rs.getInt(3),rs.getString(4) ) );
	}
	for(Javaclasscabbookinginformation each:lteration){
	out.println("<tr><td>"+each.getDrivername()+"</td><td>"+each.getDriverphone()+"</td><td>"+ each.getCarno()+"</td><td>"+ each.getCartype()+"</td>");
	}
 	%>
 	</table>
	<br>
	</br>
	<%
	out.println("<nav class=\"navbar navbar\">");
	out.println("<div class=\"navbar-header\">");
	out.println("</div>");
	out.println("<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-5\">");
	out.println("<ul class=\"nav navbar-nav\">");
	out.println("<li><a >Choose the which cab you want to Booking And also Enter the Blow Information</a></li>");
	out.println("</ul>");
	out.println("</nav>");
	%>
	<div class="main-content">
    <div class="form-group">
    <label for="auth_user" class="col-sm-4 control-label">Customer Id</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_user" name="auth_user" placeholder="Customer Id">
    </div>
  	</div>
    <div class="form-group">
    <label for="auth_dname" class="col-sm-4 control-label">Driver Name</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_drivername" name="auth_drivername" placeholder="Driver Name">
    </div> 
  	</div>
    <div class="form-group">
    <label for="auth_dphone" class="col-sm-4 control-label">Driver PhoneNo </label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_driverphone" name="auth_driverphone" placeholder="Driver Phoneno">
    </div>
    </div>
    <div class="form-group">
    <label for="auth_carno" class="col-sm-4 control-label">Car No</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_carno" name="auth_carno" placeholder="Car Number">
    </div>
    </div>
    <div class="form-group">
    <div class="col-sm-offset-4 col-sm-8">
    <button type="submit" class="btn btn-primary col-sm-6">Submit Details</button>
    </div>
    </div>    
</body>
</html>