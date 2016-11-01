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
<title>Discover | GTMD</title>
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
        <li><a href="/GTMD/mytags.jsp">Home</a></li>
        <li  class="active"><a href="#">Discover</a></li> 
        <li><a href="/GTMD/create.jsp">Create</a></li> 
        <li><a href="/GTMD/UserProfile.jsp">Profile</a></li> 
      </ul>
    </div>
  </div>
</nav>

<div class='map'>
	<a id='one' href='#1' ><img src='song.png' class='song-icon'></a>
	<a id='two' href='#2' ><img src='song.png'  class='song-icon'></a>
	<a id='three' href='#3' ><img src='song.png'   class='song-icon'></a>
	
	<img src='gps.png'   class='song-icon' id='gps'>
</div>


<div id="player" class="media">
  <a class="pull-right" href="#">
    <img class="media-object" id="play" src='play.png'>
  </a>
	
	
	
  <a class="pull-left" href="#">
    <img class="media-object" id="picture">
  </a>
  <div class="media-body">
    <h4 class="media-heading white-text" id='name'></h4>
    <p class='white-text' id='artist'></p>
 

  </div>


</div>


<script>

$('#player').hide();
var player_display = 0;

$('#three').click(function(){
	var song_obj = {
			id:1,
			song: "Wild Horses",
			artist: "Rolling Stones",
			photo: "1.png",
			name: "Starbucks"
	};
	
	loadSong(song_obj);
	
});

$('#two').click(function(){
	var song_obj = {
			id:2,
			song: "Dream On",
			artist: "Aerosmith",
			photo: "2.png",
			name: "CSULA Track"
	};
	
	loadSong(song_obj);
	
	
});

$('#one').click(function(){
	var song_obj = {
			id:3,
			song: "Under pressure",
			artist: "David Bowie",
			photo: "3.png",
			name: "Midterms"
	};
	
	loadSong(song_obj);
	
	
});


function loadSong(obj){
	
	if(player_display != obj.id){
		
		
		$('#name').html(obj.name);
		$('#artist').html(obj.song+' <br>-'+obj.artist);
		$('#picture').attr('src', obj.photo);
		
		if(player_display == 0){
			$('#player').show();
		}

				
		
		player_display = obj.id;
		
	}
	else{
		
		pause();
		$('#player').hide();
		player_display = 0;
	}
}

var audioElement = document.createElement('audio');

$('#play').click(function(){
	
	
     audioElement.setAttribute('src', player_display+'.mp4');
     audioElement.setAttribute('autoplay', 'false');

     audioElement.play();

     
	console.log('playing');
});


function pause(){
	 audioElement.pause();
}

</script>

</body>
</html>