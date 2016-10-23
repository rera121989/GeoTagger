<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome To GTMD</title>
<script type="text/javascript">

  // width to resize large images to
var maxWidth=100;
  // height to resize large images to
var maxHeight=100;
  // valid file types
var fileTypes=["bmp","gif","png","jpg","jpeg"];
  // the id of the preview image tag
var outImage="previewField";
  // what to display when the image is not valid
var defaultPic="spacer.gif";

function preview(what){
  var source=what.value;
  var ext=source.substring(source.lastIndexOf(".")+1,source.length).toLowerCase();
  for (var i=0; i<fileTypes.length; i++) if (fileTypes[i]==ext) break;
  globalPic=new Image();
  if (i<fileTypes.length) globalPic.src=source;
  else {
    globalPic.src=defaultPic;
    alert("THAT IS NOT A VALID IMAGE\nPlease load an image with an extention of one of the following:\n\n"+fileTypes.join(", "));
  }
  setTimeout("applyChanges()",200);
}
var globalPic;
function applyChanges(){
  var field=document.getElementById(outImage);
  var x=parseInt(globalPic.width);
  var y=parseInt(globalPic.height);
  if (x>maxWidth) {
    y*=maxWidth/x;
    x=maxWidth;
  }
  if (y>maxHeight) {
    x*=maxHeight/y;
    y=maxHeight;
  }
  field.style.display=(x<1 || y<1)?"none":"";
  field.src=globalPic.src;
  field.width=x;
  field.height=y;
}
</script>
</head>

<body>
<table name = "userInfo">
	<tr>
		<td>Profile: username</td>
	</tr>
	<tr>
		<td><img alt="none" src="http://4.bp.blogspot.com/-7Zu7F8ZCU3M/TrKzo2ntu2I/AAAAAAAAAnk/A917OZHiavI/s1600/insert+image+here.jpg" width = "168" height= "168"></td>
	</tr>
	<tr>
		<td><textarea rows = "6" placeholder = "User Description"></textarea>
	</tr>
	<tr>
		<td><textarea placeholder = "List of Songs" rows="7" cols="10"></textarea></td>
	</tr>
	<tr>
		
	</tr>
	
	
<div align="center" style="line-height: 1.9em;">
Test it by locating a valid file on your hard drive:
<br>
<input type="file" id="picField" onchange="preview(this)">
<br>
<img alt="Graphic will preview here" id="previewField" src="spacer.gif">
<br> <div style="font-size: 7pt;">
Script submitted by: <a href="http://www.abrahamjoffe.com.au/">Sydney Wedding Video / DVD</a></div>
</div>

<p><center>
<font face="arial, helvetica" size"-2">Free JavaScripts provided<br>
by <a href="http://javascriptsource.com">The JavaScript Source</a></font>
</center><p>
				
			<!-- 
<!-- TWO STEPS TO INSTALL IMAGE UPLOAD PREVIEW:

  1.  Copy the coding into the HEAD of your HTML document
  2.  Add the last code into the BODY of your HTML document  -->

<!-- STEP ONE: Paste this code into the HEAD of your HTML document  -->

<!-- Script Size:  2.43 KB --> -->
			

</table>
</body>
</html>