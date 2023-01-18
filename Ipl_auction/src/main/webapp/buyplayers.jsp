<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Players</title>
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
	margin-top:12%;
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
	height: 30px;
	width: 130px;
	margin-left:-0px;
	background-image: linear-gradient(rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.90));
	font-weight: bold;
	position: relative;
	z-index: 1;
}
button::before {
	content: '';
	height: 118%;
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
<h1>Available Players are:-</h1><br>
<table border="1">
<tr>
<th>Name</th>
<th>Role</th>
<th>Price</th>
<th>Buy</th>
</tr>
<c:forEach var="player" items="${players}">
<tr>
<th>${player.getName()}</th>
<th>${player.getRole()}</th>
<th>${player.getPrice()}</th>
<th><a href="buyplayer?id=${player.getId()}"><button>Buy</button></a>
</th>
</tr>
</c:forEach>
</table>
<a href="teamhomedummy"><button style="margin-top:10px;">Back</button></a>
</div>
</body>
</html>