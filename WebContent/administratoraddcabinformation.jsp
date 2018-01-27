<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Cab Information</title>
</head>
<body>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	border: 0;
	background: transparent url('#') no-repeat center center;
	background-size: cover;
	background-attachment: fixed;
}
.main-content {
	width: 748px;
	margin: 20px auto;
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
    <form class="form-horizontal" method="get" action="Javacabvalidation" >
    <div class="main-content">
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
    <label for="auth_cartype" class="col-sm-4 control-label">Car Type </label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_cartype" name="auth_cartype" placeholder="Car Type">
    </div>
    </div> 
    <div class="main-content">
    <div class="form-group">
    <div class="col-sm-offset-4 col-sm-8">
    <button type="submit" class="btn btn-primary col-sm-6">Submit Details</button>
    </div>
    </div>
    </form>
</body>
</html>