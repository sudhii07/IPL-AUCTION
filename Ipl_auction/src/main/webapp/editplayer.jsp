<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
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
.a{
	margin-top:12%;
	margin-left:40px;
}
h1 {
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #000000 20%, #119CFDFF);
	text-align: center;
	margin-top: 0px;
	color: white;
	width:294px;
	border-radius:10px;
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
	display: inline-block;
}
input{
	height:25px;
	width:200px;
	background: -webkit-linear-gradient(#33006F);
	-webkit-background-clip: text;
	-webkit-text-fill-color: #cedc0d;
	margin-left:10px;
	caret-color: red;
}
form:option{
	
}
.c{
	height:25px;
	width:200px;
	background: -webkit-linear-gradient(#33006F);
	-webkit-background-clip: text;
	-webkit-text-fill-color: #cedc0d;
	margin-left:53px;
	background-color:black;
	color:white;
	
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
	width: 103%;
}
</style>
</head>
<body>
<div class="a">
<h1>Update Your Details</h1><br>
<form:form action="updateplayer" modelAttribute="player">
Name:<form:input path="name" style="margin-left:43px;"/><br><br>
USername:<form:input path="username"/><br><br>
Role:<form:select path="role" class="c">
<form:option value="Batsman">BatsMan</form:option>
<form:option value="Bowler">Bowler</form:option>
<form:option value="AllRounder">All Rounder</form:option>
<form:option value="Wicketkeeper">Wicket keeper</form:option>
</form:select><br><br>
Price:<form:input path="price" readonly="true" style="margin-left:44px;"/><br><br>
<button>Update</button>
</form:form>
<a href="playerhome.jsp"><button style="margin-left:-136px;">Back</button></a>
</div>
</body>
</html>