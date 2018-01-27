<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking</title>
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
	<form class="form-horizontal" method="get" action="Javaroombookingvalidation" >
	<div class="main-content">
    <div class="form-group">
    <label for="auth_bphone" class="col-sm-4 control-label">Customer Id</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_user" name="auth_user" placeholder="Customer ID">
    </div>
    </div>  
    <div class="form-group">
    <label for="auth_bname" class="col-sm-4 control-label">Full Name</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_name" name="auth_name" placeholder="Person Name">
    </div> 
    </div>
    <div class="form-group">
    <label for="auth_id" class="col-sm-4 control-label">Id Proof</label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_id" name="auth_id" placeholder="Aadhar Number">
    </div>
    </div>
    <div class="form-group">
    <label for="auth_checkin" class="col-sm-4 control-label">Check In Date </label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_checkin" name="auth_checkin" placeholder="dd-mon-yy">
    </div>
    </div>
    <div class="form-group">
    <label for="auth_checkout" class="col-sm-4 control-label">Check out Date </label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_checkout" name="auth_checkout" placeholder="dd-mon-yy">
    </div>
    </div>
    <div class="form-group">
    <label for="auth_amtadv" class="col-sm-4 control-label">Amount Advance </label>
    <div class="col-sm-6">
    <input type="text" class="form-control" id="auth_amountadv" name="auth_amountadv" placeholder="Advance Amount">
    </div>
    </div>
    <div class="main-content">
    <div class="form-group">
    <label for="roomno" class="col-sm-4 control-label">RoomNo</label>
    <div class="col-sm-6">
    <select id="roomno" name="roomno">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="1">6</option>
    <option value="2">7</option>
    <option value="3">8</option>
    <option value="4">9</option>
    <option value="5">10</option>
    </select> 
    </div>
    </div>
    <div class="form-group">
    <label for="floorno" class="col-sm-4 control-label">FloorNo</label>
    <div class="col-sm-6">
    <select id="floorno" name="floorno">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="1">4</option>
    <option value="2">5</option>
    </select> 
    </div>
    </div>
    <div class="form-group">
    <label for="roomtype" class="col-sm-4 control-label">RoomType</label>
    <div class="col-sm-6">
    <select id="roomtype" name="roomtype">
    <option value="ac">Ac</option>
    <option value="nonac">Non-Ac</option>  
    </select> 
    </div>
    </div>
    <div class="form-group">
    <label for="roomservice" class="col-sm-4 control-label">RoomService</label>
    <div class="col-sm-6">
    <select id="roomservice" name="roomservice">
    <option value="waterservice">Water Service</option>
    <option value="foodservice">food Service</option>
    </select> 
    </div>
    </div>
    <div class="form-group">
    <label for="price" class="col-sm-4 control-label">Price</label>
    <div class="col-sm-6">
    <select id="price" name="price">
    <option value="1000">1000</option>
    <option value="500">2500</option>
    <option value="5000">5000</option>
    <option value="2500">10000</option>
    </select> 
    </div>
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