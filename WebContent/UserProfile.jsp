<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<script   src="https://code.jquery.com/jquery-3.1.1.min.js"   integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="   crossorigin="anonymous"></script>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link rel="stylesheet" href='style.css'>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile</title>

<style>
table{
border: 2px solid grey;}


td{
	padding: 20px;
}

</style>

</head>
<body class='grey-bg main'>


<!-- NAVBAR -->

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">G.T.M.D.</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="/GTMD/discover.jsp">Discover</a></li> 
        <li><a href="/GTMD/create.jsp">Create</a></li> 
        <li><a href="/GTMD/UserProfile.jsp">Profile</a></li> 
      </ul>
    </div>
  </div>
</nav>

	<div class='row'>
		<div class='col-md-1 col-sm-1'></div>
		<div class='col-md-10 col-sm-10'>
		
			<h1 class='title'> Profile</h1>
			
			<table class = "profileTable">
			<tr>
				<td><img alt="none" src="http://4.bp.blogspot.com/-7Zu7F8ZCU3M/TrKzo2ntu2I/AAAAAAAAAnk/A917OZHiavI/s1600/insert+image+here.jpg" width = "168" height= "168"></td>
				<td><textarea class = "description" rows = "6" placeholder = "User Description"></textarea></td>
			</tr>

			<tr>
			<td>
				<a class="btn btn-primary col-md-2 col-sm-4" href='mytags.jsp'>Home</a>
			<td>
				<a class="btn btn-primary col-md-2 col-sm-4" href='update.jsp'>Update</a>
			</td>
			</tr>
			</table>
			
		</div>
		</div>


</body>
</html>