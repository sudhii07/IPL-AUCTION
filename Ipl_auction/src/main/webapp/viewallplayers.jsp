<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Players</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

html {
	min-height: 100%;
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65)),url(https://bcciplayerimages.s3.ap-south-1.amazonaws.com/bcci/images/1644846139_cropped.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
.a{
	margin-top:6%;
	margin-left:40px;
}
h1 {
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #000000 20%, #119CFDFF);
	text-align: center;
	margin-top: 0px;
	color: white;
	width:350px;
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
table{
	color:white;
	border:2px solid grey;
	width:55%;
}
th, td {
  border-bottom: 1px solid #ddd;
}
tr:hover {
	background-color:orange;
	color:black;
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
	height: 119%;
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
	width: 104%;
}
</style>
</head>
<body>
<div class="a">
<h1>List of All Players</h1><br>
<table border="1">
<tr>
<th>Player Name</th>
<th>Role</th>
<th>Country</th>
<th>Status</th>
<th>Price</th>
<th>Change Status</th>
</tr>
<c:forEach var="player" items="${players}">
<tr>
<th>${player.getName()}</th>
<th>${player.getRole()}</th>
<th>${player.getCountry()}</th>
<th>${player.getStatus()}</th>
<th>${player.getPrice()}</th>
<th><a href="changeplayerstatus?id=${player.getId()}"><button>Change Status</button></a></th>
</tr>
</c:forEach>

</table><br>

<a href="managementhome.jsp"><button style="">Back</button></a>
</div>
</body>
</html>