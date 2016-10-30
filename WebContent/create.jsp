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
<title>Create Tag</title>
</head>
<body class='login-bg main'>



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
        <li><a href="/GTMD/mytags.jsp">Home</a></li>
        <li><a href="/GTMD/discover.jsp">Discover</a></li> 
        <li class="active"><a href="#">Create</a></li> 
        <li><a href="/GTMD/UserProfile.jsp">Profile</a></li> 
      </ul>
    </div>
  </div>
</nav>



<ul class="list-group">


  <li class="list-group-item top-item">Create Tag:</li>

  <li class="list-group-item">Tag Name: 
  	<input class="form-control" type='text' id='name'>
  </li>
  <li class="list-group-item">Song title:
  	<input class="form-control" type='text' id='title'>
  </li>
  <li class="list-group-item">Song artist:
  	<input class="form-control" type='text' id='artist'>
  </li>
  <li class="list-group-item">City:
  	<input class="form-control" type='text' id='city'>
  </li>
  
  <li class="list-group-item">
  	<a class='btn btn-success center-block' id='submit-tag' data-rel="popup">Submit</a>
  </li>


  
</ul>

<script>
var notify = false;

$('#submit-tag').click(function(){
	
	if($('#name').val() != '' && $('#title').val() != '' && $('#artist').val() != '' && $('#city').val() != '' ){
	
		var data = {'type':'create_tag', 
				'user_id':1, 
				'name': $('#name').val(),
				'song':$('#title').val(), 
				'artist':$('#artist').val(), 
				'lat': 34.065509,
				'long': -118.168666,
				'city':$('#city').val()
			};
	
	
		$.ajax({
		    type: 'get', // it's easier to read GET request parameters
		    url: 'http://localhost:8080/GTMD/tags/create',
		    dataType: 'JSON',
		    data:{type:'DB_Request', json:JSON.stringify(data)},
		}).done(function(data) {
			console.log(data);
			var item;
			if(data){
				success();
			}
			else{
				failed();
			}
		}).fail(function (jqXHR, textStatus) {
			console.log('failed');
		    console.log(jqXHR);
		    failed();
		});
		
	}
	
	else{
		failed();
	}
	
	
	
});

function success(){
	if(!notify){
		item = '<li class="list-group-item" id="notify"><p class="btn btn-success center-block">Created Tag!</p> </li>';
		$('.list-group').append(item);
		
		notify = true;
		
		setTimeout(function() {
			$('#notify').remove();
			notify = false;
		}, 2000);
		
	}
}

function failed(){
	if(!notify){
		item = '<li class="list-group-item" id="notify"><p class="btn btn-warning center-block">Failed!</p> </li>';
		$('.list-group').append(item);
		
		notify = true;
		
		setTimeout(function() {
			$('#notify').remove();
			notify = false;
		}, 2000);
		
	}	
}

</script>
</body>
</html>