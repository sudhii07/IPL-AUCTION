<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Management Login</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

html {
	min-height: 100%;
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65)),url(https://wallpaperaccess.com/full/5846498.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
.b{
	margin-top:15%;
	margin-left:40px;
}
h2{
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65));
	color:white;
	text-align:center;
}
h1 {
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #000000 20%, #119CFDFF);
	text-align: center;
	margin-top: 0px;
	color: white;
	width:300px;
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
form{
	color:#B9D9EB;	
	font-weight: bold;
}
input{
	height:25px;
	width:220px;
	background: -webkit-linear-gradient(#33006F);
	-webkit-background-clip: text;
	-webkit-text-fill-color: #cedc0d;
	caret-color:red;
}
button{
	height: 35px;
	width: 130px;
	background-image: linear-gradient(rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.90));
	font-weight: bold;
	position: relative;
	z-index: 1;
}
button::before {
	content: '';
	height: 106%;
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
a{
	margin-left:40px;
}
</style>
</head>
<body>
<h2>${msg}</h2>
<div class="b">
<h1>Management Login</h1><br>
<form action="managementlogin" method="post">
UserName:<input type="text" name="username"><br><br>
Password:<input type="password" name="password" style="margin-left:6px;"><br><br>
<button>Login</button><button type="reset" style="margin-left:43px;">Cancel</button><br><br>
</form>
<a href="index.jsp"><button style="margin-left:48px;">Back</button></a>
</div>
</body>
</html>