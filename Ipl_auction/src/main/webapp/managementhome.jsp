<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Management HomePage</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

html {
	min-height: 100%;
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65)),url(https://bcciplayerimages.s3.ap-south-1.amazonaws.com/resizedimageskirti/1644830713_Singh96_0267_compressed.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
h2 {
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65));
	text-align: center;
	margin-top: 0px;
	color: white;
	text-align: center;
	height:35px;
	
}
h1 {
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #000000 20%, #119CFDFF);
	text-align: center;
	margin-top: 0px;
	color: white;
	width:370px;
	border-radius: 10px;
	text-shadow: 0 1px 0 #999999, 0 2px 0 #888888,
             0 3px 0 #777777, 0 4px 0 #666666,
             0 5px 0 #555555, 0 6px 0 #444444,
             0 7px 0 #333333, 0 8px 7px rgba(0, 0, 0, 0.4),
             0 9px 10px rgba(0, 0, 0, 0.2);
}
h1:hover {
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #FFFFFF 20%, #119CFDFF);
	text-align: center;
	margin-top: 0px;
	color: black;
}
.a{
	margin-top:11%;
	margin-left:40px;
}
button{
	height: 35px;
	width: 200px;
	background-image: linear-gradient(rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.90));
	font-weight: bold;
	position: relative;
	z-index: 1;
}
button::before {
	content: '';
	height: 107%;
	width: 0%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #FFFFFF 20%, #119CFDFF);
	transition: all ease 0.5s;
	z-index: -1;
}
button:hover::before{
	width: 101%;
}
</style>
</head>
<body>
	<center><h2>${msg}</h2></center>
	<div class="a">
	<h1>Management HomePage</h1><br>
	<a href="viewAllteams"><button>View Team</button></a><br><br>
	<a href="viewAllplayers"><button>View Players</button></a><br><br>
	<a href="index.jsp"><button style="width:100px">Back</button></a>
	</div>
</body>
</html>