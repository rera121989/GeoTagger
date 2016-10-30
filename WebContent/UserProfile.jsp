<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">


<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href='style.css'>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile</title>

<style>
.kv-avatar .file-preview-frame, .kv-avatar .file-preview-frame:hover {
	margin: 0;
	padding: 0;
	border: none;
	box-shadow: none;
	text-align: center;
}

.kv-avatar .file-input {
	display: table-cell;
	max-width: 220px;
}

td {
	padding: 2em;
}
</style>

<script>
	var btnCust = '<button type="button" class="btn btn-default" title="Add picture tags" '
			+ 'onclick="alert(\'Call your custom code here.\')">'
			+ '<i class="glyphicon glyphicon-tag"></i>' + '</button>';

	$("#avatar-2")
			.fileinput(
					{
						overwriteInitial : true,
						maxFileSize : 1500,
						showClose : false,
						showCaption : false,
						showBrowse : false,
						browseOnZoneClick : true,
						removeLabel : '',
						removeIcon : '<i class="glyphicon glyphicon-remove"></i>',
						removeTitle : 'Cancel or reset changes',
						elErrorContainer : '#kv-avatar-errors-2',
						msgErrorClass : 'alert alert-block alert-danger',
						defaultPreviewContent : '<img src="avatar.jpg" alt="Your Avatar" style="width:160px"><h6 class="text-muted">Click to select</h6>',
						layoutTemplates : {
							main2 : '{preview} ' + btnCust
									+ ' {remove} {browse}'
						},
						allowedFileExtensions : [ "jpg", "png", "gif" ]
					});
</script>

</head>

<body class='grey-bg main'>


	<!-- NAVBAR -->

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
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

	<div class="container">

		<div class='col-md-1 col-sm-1'></div>
		<div class='col-md-10 col-sm-10'>

			<br>
			<div class="well">
				<h1 class='title'>Profile</h1>
			</div>


			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>Raymond Romero</th>
						</tr>

					</thead>
					<tbody>
						<tr>
							<td>
							<img src = "avatar.jpg" width = "125px" height = "125px">
								<div id="kv-avatar-errors-2" class="center-block"
									style="width: 800px; display: none"></div>
								<form class="text-center" action="/avatar_upload.php"
									method="post" enctype="multipart/form-data">
									<div class="kv-avatar center-block" style="width: 200px">
										<input id="avatar-2" name="avatar-2" type="file"
											class="file-loading">
									</div>
									<!-- include other inputs if needed and include a form submit (save) button -->
								</form>
							</td>
						</tr>
						<tr>
							<td>
								<textarea class = "description" cols = "200" rows = "20" placeholder = "Description"></textarea>
							</td>
						</tr>
						<tr>
							<td><a class="btn btn-primary col-md-2 col-sm-4"
								href='mytags.jsp' width="99px" >Home</a></td>
						</tr>
						<tr>
							<td><a class="btn btn-primary col-md-2 col-sm-4"
								href='update.jsp'>Update</a></td>
						</tr>
					</tbody>
				</table>

			</div>


		</div>
	</div>
</body>
</html>