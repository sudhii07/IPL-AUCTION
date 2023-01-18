<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
   <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Teams</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

html {
	min-height: 100%;
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65)),url(https://bcciplayerimages.s3.ap-south-1.amazonaws.com/bcci/images/1644846598_cropped.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
.a{
	margin-top:8%;
	margin-left:40px;
}
h1 {
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #000000 20%, #119CFDFF);
	text-align: center;
	margin-top: 0px;
	color: white;
	width:280px;
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
h2{
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65));
	text-align: center;
	margin-top: 0px;
	color: white;
	text-align: center;
	height:35px;
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
	width: 150px;
	background-image: linear-gradient(rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.90));
	font-weight: bold;
	position: relative;
	z-index: 1;
}
button::before {
	content: '';
	height: 117%;
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
.b:hover{
	background: -webkit-linear-gradient(#33006F);
	-webkit-background-clip: text;
	-webkit-text-fill-color: #cedc0d;
	border:1px solid white;
}
</style>
</head>
<body>
<h2>${msg}</h2>
<div class="a">
<h1>List of all teams</h1>
<table border="1">
<tr>
<th>Team Name</th>
<th>Wallet</th>
<th>Status</th>
<th>Players</th>
<th>Change Status</th>
<th>Add Amount</th>
</tr><br>
<c:forEach var="team" items="${teams}">
<tr>
<th>${team.getName()}</th>
<th>${team.getWallet()}</th>
<th>${team.isStatus()}</th>
<th><a href="viewplayers?id=${team.getId()}"><button>View Players</button></a></th>
<th><a href="changestatus?id=${team.getId()}"><button>Change Status</button></a></th>
<th><a href="addamount.jsp?id=${team.getId()}"><button>Add Amount</button></a></th>
</tr>
</c:forEach>
</table><br>
<a href="managementhome.jsp"><button style="width:120px;">Back</button></a>
</div>
</body>
</html>