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
<title>GeoTaggin Music Directory</title>
</head>
<body class='container-fluid login-bg'>
	<div class='row login'>

		<div class='col-md-1 col-sm-1'></div>
		<div class='col-md-10 col-sm-10'>
		<div class="jumbotron">
			<h1 class='title'> GeoTaggin Music Directory</h1>
		</div>
		</div>
		<div class='col-md-1 col-sm-1'></div>
	</div>

		
			<div class='row low login'>
				<div class='col-md-1 col-sm-1'></div>
				<div class='col-md-10 col-sm-10'>
					<input type="text" name="username"  required placeholder='Username' class='login'> 
				</div>
				<div class='col-md-1 col-sm-1'></div>
			</div>
	
			<div class='row login'>
				<div class='col-md-1 col-sm-1'></div>
				<div class='col-md-10 col-sm-10'>
					<input type="password" name="password" required placeholder='Password' class='login'>
				</div>
				<div class='col-md-1 col-sm-1'></div>
			</div>
			


 		<div class='row login'>
				<div class='col-md-5 col-sm-4 col-xs-4'></div>
				<div class='col-md-2 col-sm-4 col-xs-4'>
					<a class="btn btn-primary" href='/GTMD/mytags.jsp'>Login</a>
				</div> 
				<div class ='col-md-5 col-sm-4 col-xs-4'></div>
				
			</div>
</body>
</html>