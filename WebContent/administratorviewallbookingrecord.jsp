<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement,java.util.List, java.util.LinkedList, hotel.management.Javaclassroombookinginformation,hotel.management.Javadatabaseconnection,hotel.management.Cookies,java.sql.ResultSet, java.sql.Statement, java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ITEM-LIST</title>
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
 	<td>Name</td>
 	<td>Idproof</td>
 	<td>Checkindate</td>
 	<td>Checkoutdate</td>
  	<td>Advancepay</td>
 	<td>Roomno</td>
  	<td>Floorno</td>
    <td>Roomtype</td>
    <td>Roomservice</td>
    <td>Price</td>
    </tr>
    </form>
   <%
	Cookie cks[] = request.getCookies();
	int i;
	String id = null;
	if(cks != null) {
	for(i = 0; i < cks.length; i++) {
	if(cks[i].getName().equals("auth_user")) {
		id=cks[i].getValue();
		}
	}
	}
	List<Javaclassroombookinginformation> lteration = new LinkedList<Javaclassroombookinginformation>();
	Javadatabaseconnection db = new Javadatabaseconnection();
	PreparedStatement ps = db.getPS("SELECT * FROM USERDETAILS  ");
	PreparedStatement ps1 = db.getPS("SELECT * FROM ROOMDETAILS");
	ResultSet rs = ps.executeQuery();
	ResultSet rs1 = ps1.executeQuery();
	while( (rs.next()) && (rs1.next() ) ){
	 lteration.add( new Javaclassroombookinginformation(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6),rs1.getInt(1), rs1.getInt(2), rs1.getInt(3), rs1.getString(4), rs1.getString(5), rs1.getInt(6)) );
	}
	for(Javaclassroombookinginformation each:lteration){
	out.println("<tr><td>"+each.getcustomerid() +"</td><td>"+ each.getBookingname() +"</td><td>"+each.getIdproof() +"</td><td>"+ each.getCheckindate() +"</td><td>"+ each.getCheckoutdate()+"</td><td>"+ each.getAdvancepay()+"</td><td>"+ each.getRoomno()+"</td><td>"+ each.getFloorno()+"</td><td>"+ each.getRoomtype()+"</td><td>"+ each.getRoomservice()+"</td><td>"+ each.getPrice()+"</td>");
	} 
 	%>
 	</table>
	<br>
	</br>
</body>
</html>