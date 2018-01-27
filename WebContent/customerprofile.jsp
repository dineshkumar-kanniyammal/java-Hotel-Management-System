<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel-Management</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	border: 0;
	background: transparent url('images/think.jpg') ;
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
		out.println("<a class=\"navbar-brand\" href=\"customerprofile.jsp\">Customer Profile</a>");
		out.println("</div>");
		out.println("<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">");
		out.println("<ul class=\"nav navbar-nav\">");
		out.println("<li><a href=\"customerpasswordchange.jsp\">Change Password</a></li>");
		out.println("<li><a href=\"customernewroombooking.jsp\">New Room Booking</a></li>");
		out.println("<li><a href=\"customerviewroombookinginformation.jsp\">Booking Details</a></li>");
		out.println("<li><a href=\"customercabbooking.jsp\">cab service</a></li>");
		out.println("<li><a href=\"customercabrequest.jsp\">Booking Cab Details</a></li>");
		out.println("<li><a href=\"customerbookingcancelation.jsp\">Booking Cancel</a></li>");
		out.println("</ul>");
		out.println("<ul class=\"nav navbar-nav navbar-right\">");
		out.println("<li><a href=\"logout.jsp\">signout</a></li>");
		out.println("</ul>");
		out.println("</div>");
		out.println("</nav>");
		%>

</body>
</form>
</html>
