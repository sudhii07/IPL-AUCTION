<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Team</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

html {
	min-height: 100%;
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65)),url('${img}');
	background-repeat: no-repeat;
	background-size: cover;
}
.a{
	margin-top:15%;
	margin-left:40px;
}
h1 {
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #000000 20%, #119CFDFF);
	text-align: center;
	margin-top: 0px;
	color: white;
	width:330px;
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
	display:inline-block;
}
input{
	height:25px;
	width:200px;
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
</style>
</head>
<body>
<div class="a">
<h1>View Team By Name</h1><br>
<form action="fetchusingteam">
Select Team : <select name="name">
<c:forEach var="team" items="${teams}">
<option value="${team.getName()}">${team.getName()}</option>
</c:forEach>
</select><br><br>
<button>Search</button>
</form>
<a href="teamhomedummy"><button style="margin-left:-17px;">Back</button></a>
</div>
</body>
</html>