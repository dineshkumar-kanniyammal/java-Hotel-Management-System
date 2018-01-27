<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.PreparedStatement,java.util.List,java.lang.reflect.*,java.io.*,java.sql.*, java.util.LinkedList, hotel.management.Javaclasscabbookinginformation,hotel.management.Javadatabaseconnection,hotel.management.Cookies,java.sql.ResultSet, java.sql.Statement, java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ITEM-LIST</title>

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


<a href="administratorprofile.jsp" class="btn btn-primary btn-lg active" role="button">Profile</a> 
  
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
	 lteration.add( new Javaclasscabbookinginformation(rs.getString(1),  rs.getInt(2), rs.getInt(3),rs.getString(4) ) );
}

for(Javaclasscabbookinginformation each:lteration){
	 out.println("<tr><td>"+each.getDrivername()+"</td><td>"+each.getDriverphone()+"</td><td>"+ each.getCarno()+"</td><td>"+ each.getCartype()+"</td>");
	
}


	 


 
 %>
 
 </table>

 

<br>
</br>
 
  

</body>
</html>