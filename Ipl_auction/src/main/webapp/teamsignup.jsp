<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team SignUp</title>
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
	margin-top:10%;
	margin-left:40px;
}
h1 {
	background-image: linear-gradient(#A100FFFF, #000000 -15%, #000000 20%, #119CFDFF);
	text-align: center;
	margin-top: 0px;
	color: white;
	width:350px;
	border-top-right-radius:35px;
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
	width:200px;
	background: -webkit-linear-gradient(#33006F);
	-webkit-background-clip: text;
	-webkit-text-fill-color: #cedc0d;
	margin-left:15px;
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
<div class="a">
<h1 style="margin-top: 7px">Team SignUp</h1><br><br>
<form:form action="teamsignup" modelAttribute="team" method="post">
<h2>Team Name:<form:input path="name"/></h2><br>
<h2 style="margin-left:9px;">User Name:<form:input path="username"/></h2><br>
<h2 style="margin-left:23px;">Password:<form:input path="password"/></h2><br>
<h2 style="margin-left:3px;">Image Link:<form:input path="imagelink"/></h2><br>
<form:button style="margin-left:0px;">Save</form:button><button type="reset" style="margin-left:90px;">Cancel</button>
</form:form> <br>
<a href="signup.jsp"><button style="margin-left:110px;">Back</button></a>
</div>
</body>
</html>