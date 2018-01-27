<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel</title>
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
	<div class="main-content">
	<form class="form-horizontal" method="post" action="javapasswordvalidation" >
  	<div class="form-group">
    <label for="auth_user" class="col-sm-4 control-label">Customer Id</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_user5" name="auth_user5" placeholder="Customer Id">
    </div>
  	</div>
  	<div class="form-group">
    <label for="auth_key" class="col-sm-4 control-label">Password</label>
    <div class="col-sm-6">
    <input type="password" class="form-control" name="auth_key" id="auth_key" placeholder="Password">
    </div>
  	</div>
  	<div class="form-group">
    <label for="auth_key" class="col-sm-4 control-label">Change Password</label>
    <div class="col-sm-6">
    <input type="password" class="form-control" name="new_auth_key" id="new_auth_key" placeholder=" Confirm Password">
    </div>
  	</div>
 	<div class="form-group">
    <div class="col-sm-offset-4 col-sm-8">
    <button type="submit" class="btn btn-primary col-sm-6">Submit Details</button>
    </div>
 	</div>
  	</form>
  	</div>
 </body>
</html> 
  
  
  