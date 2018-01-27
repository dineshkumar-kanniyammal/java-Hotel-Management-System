<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home - Hotel Management</title>   
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	border: 0;
	background: transparent url('#') no-repeat center center;
	background-size: cover;
}
.main-content {
	width: 512px;
	margin: 150px auto;
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
	<div class="main-content">
	<form class="form-horizontal" method="get" action="Javasignupvalidation" onsubmit="return doBasicCheck()">
  	<div class="form-group">
    <label for="auth_phone" class="col-sm-4 control-label">Customer NUMBER</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_user1" name="auth_user1" placeholder="User Id">
    </div>
 	</div>
  	<div class="form-group">
    <label for="auth_key" class="col-sm-4 control-label">Password</label>
    <div class="col-sm-6">
    <input type="password" class="form-control" name="auth_key1" id="auth_key1" placeholder="Password">
    </div>
  	</div>
 	<div class="form-group">
    <label for="auth_key" class="col-sm-4 control-label">Conform Password</label>
    <div class="col-sm-6">
    <input type="password" class="form-control" name="auth_key2" id="auth_key2" placeholder="conform Password">
    </div>
  	</div>
  	<div class="form-group">
    <div class="col-sm-offset-4 col-sm-8">
    <button type="submit" class="btn btn-primary col-sm-6">Sign up</button>
    </div>
 	</div>
	</form>
	</div>
</body>
</html>