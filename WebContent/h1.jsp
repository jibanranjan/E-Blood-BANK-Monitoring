<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>E-Blood bank monitoring hospitals</title>
<link href="style.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"></head>
<body >
<div align="center"><h1 align="center" style="background-color: ;">
<span style="color: #ed2b59;">E-</span> 
<span style="color: #8a4f51;">Blood bank monitoring hospitals </span>
</h1></div>
<ul>
<li ><a href="index.html">home</a></li>
<li class="active"><a href="h.jsp">hospital</a></li>

<!-- <li><a href="reg.jsp">hospital</a></li>
 -->
 <li><a href="bb.jsp">blood bank</a></li>

</ul>
<div align="center">
<h3>Hospital Login</h3>
<font face="Aria" color="red" size="1">*Invalid Username/Password</font>
<br>
<form action="hback.jsp">
<table>
<tr><td>UserName:</td><td><input type="email" name=uname></td></tr>
<tr><td>Password:</td><td><input type=password name=pass></td></tr>
 
<tr><td><input type=submit value="signIn"></td><td><input type="reset" value="Reset"></td><td><a href="reg.jsp">Registration</a></td></tr>
</table>
</form>
</div></body>
</head>
</html>