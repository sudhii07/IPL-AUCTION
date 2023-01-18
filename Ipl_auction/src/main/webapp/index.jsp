<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IPL Auction</title>
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

.a {
	margin-top: 150px;
	text-align: center;
	width: 280px;
	display: flex;
	margin-left: 200px;
	gap: 20px;
}

marquee {
	background-image:  linear-gradient(#A100FFFF, #000000 -1%, #000000 2%, #119CFDFF);
	text-align:center;
	margin-top: 0px;
	color: white;
    text-shadow: 0 1px 0 #999999, 0 2px 0 #888888,
             0 3px 0 #777777, 0 4px 0 #666666,
             0 5px 0 #555555, 0 6px 0 #444444,
             0 7px 0 #333333, 0 8px 7px rgba(0, 0, 0, 0.4),
             0 9px 10px rgba(0, 0, 0, 0.2);
}

marquee:hover {
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #FFFFFF 20%, #119CFDFF);
	background-color: transparent;
	text-align: center;
	margin-top: 0px;
	color: black;
}

.b {
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65));
	text-align: center;
	margin-top: 0px;
	color: white;
	text-align: center;
}

button {
	height: 35px;
	width: 190px;
	margin-top: 160%;
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

button:hover::before {
	width: 101%;
}
</style>
</head>
<body>
	<marquee scrollamount="15" loop="100" height="40px" direction="right">
		<h1>WELCOME TO IPL AUCTION</h1><br>
	</marquee>
	<center class="b"><h2>${msg}</h2></center>
	<div class="a">
		<a href="managementlogin.jsp"><button>Login AS Management</button></a><br><br> 
		<a href="teamlogin.jsp"><button>Login AS Team</button></a> <br> <br>
		<a href="playerlogin.jsp"><button>Login AS Player</button></a> <br> <br> 
		<a href="signup.jsp"><button>New? Click here to SignUp</button></a> <br>
	</div>
</body>
</html>