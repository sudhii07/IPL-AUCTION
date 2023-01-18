<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
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

h1{
	margin-left:20px;
	margin-top:200px;
	hieght:15px;
	width:300px;
	text-align:center;
	color:white;
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #000000 20%, #119CFDFF);
	font-weight: bold;
	border-top-right-radius:35px;
	text-shadow: 0 1px 0 #999999, 0 2px 0 #888888,
             0 3px 0 #777777, 0 4px 0 #666666,
             0 5px 0 #555555, 0 6px 0 #444444,
             0 7px 0 #333333, 0 8px 7px rgba(0, 0, 0, 0.4),
             0 9px 10px rgba(0, 0, 0, 0.2);
}
h1:hover{
	margin-left:20px;
	margin-top:200px;
	hieght:15px;
	width:300px;
	text-align:center;
	color:black;
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #FFFFFF 20%, #119CFDFF);	
}
h2{
	background-image: linear-gradient(rgba(0, 0, 0, 0.65),rgba(0, 0, 0, 0.65));
	text-align: center;
	margin-top: 0px;
	color: white;
	text-align: center;
	height:35px;
}
form{
	margin-left:80px;
	color:#B9D9EB;	
	font-weight: bold;
	display: inline-block;
}
button{
	height: 35px;
	width: 130px;
	background-image: linear-gradient(rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.90));
	font-weight: bold;
	position: relative;
	margin-left:-60px;
	z-index: 1;
}
button::before {
	content: '';
	height: 105%;
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
<h2>${msg}</h2>
<h1>Choose Your Role:--</h1><br>
<form action="signup" method="post" class=formm>
<input type="radio" name="role" id="role" value="Management" required="required"> Management<br><br>
<input type="radio" name="role" id="role" value="Team"> Team<br><br>
<input type="radio" name="role" id="role" value="Player"> Player<br><br>
<button>Submit</button>
</form>
<a href="index.jsp"><button style="margin-left:0px;">Back</button></a>
</body>
</html>