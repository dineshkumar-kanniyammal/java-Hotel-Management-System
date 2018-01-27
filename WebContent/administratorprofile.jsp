<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement,java.util.List, java.util.LinkedList, hotel.management.Javadatabaseconnection,hotel.management.Cookies,java.sql.ResultSet, java.sql.Statement, java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin profile</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	border: 0;
	background: transparent url('images/think.jpg') no-repeat center center;
	background-size: cover;
}
.main-content {
	width: 512px;
	margin: 150px center;
	padding: 20px 0;
	background: rgba(256, 256, 256, 0.8);
	border-radius: 3px;
}
label {
	cursor: pointer;
}
</style>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css" type="text/css" />
</head>
<body>
		<%
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<link rel=\"stylesheet\" href=\"bootstrap/css/bootstrap.min.css\" type=\"text/css\" />");
		out.println("<style>\n.main-content {\n\tmargin: 10px auto;\n\twidth:512px;\n}\n</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<nav class=\"navbar navbar-default\">");
		out.println("<div class=\"navbar-header\">");
		out.println("<a class=\"navbar-brand\" href=\"administratorprofile.jsp\">ADMIN PROFILE</a>");
		out.println("</div>");
		out.println("<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">");
		out.println("<ul class=\"nav navbar-nav\">");
		out.println("<li><a href=\"administratorpasswordchange.jsp\">Change Password</a></li>");
	    out.println("<li><a href=\"administratoraddcabinformation.jsp\">ADD CAB DETAILS</a></li>");
	    out.println("<li><a href=\"administratorviewallbookingrecord.jsp\">ALL BOOKED RECORDS</a></li>");
        out.println("<li><a href=\"administratorcabinformation.jsp\">ALL CAB DETAILS</a></li>");
        out.println("<li><a href=\"administratorcabservices.jsp\">CAB SERVICES REQUEST</a></li>");
		out.println("</ul>");
		out.println("<ul class=\"nav navbar-nav navbar-right\">");
		out.println("<li><a href=\"logout.jsp\">signout</a></li>");
		out.println("</ul>");
		out.println("</div>");
		out.println("</nav>");
		%>
		<div>
        </div>
        <br>
        </br>
        <div>
        </div>
        <br>
        </br>
		<div class="main-content">
		<form class="form-horizontal" method="get" action="Javacurrentdatevalidation" >
  		<div class="form-group">
    	<label for="auth_phone" class="col-sm-4 control-label">CURRENT DATE</label>
    	<div class="col-sm-6">
      	<input type="text" class="form-control" id="currentdate" name="currentdate" placeholder="dd-mon-yy">
    	</div>
  		</div>
	    </form>
 	    <br>
 	    </br>
 	    <div>
 	    </div>
 	    </div>
 	    <br>
 	    </br>
 	    <div>
 	    </div>

</body>
</form>
</html>
