<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Blood bank monitoring hospitals</title>
<link href="style.css" type="text/css" rel="stylesheet"></head>
<body>
<div align="center"><h1 align="center" style="background-color: ;">
<span style="color: #ed2b59;">E-</span> 
<span style="color: #8a4f51;">Blood bank monitoring hospitals </span>
</h1>
</div>
<ul>
<li><a href="index.html">home</a></li>
<li><a href="h.jsp">hospital</a></li>

<!-- <li><a href="reg.jsp">hospital</a></li>
 -->
 <li  class="active"><a href="bb.jsp">blood bank</a></li>

</ul>
<center>
<h1>Blood Bank Login</h1>
<font face="Aria" color="red" size="3">*Invalid UserName/Password</font>
<br>
<form action="bbback.jsp">
<table>
<tr><td>UserName:</td><td><input type=text name=uname></td></tr>
<tr><td>Password:</td><td><input type=password name=pass></td></tr>
<tr><td><input type=submit value="Login"></td><td><input type="reset" value="Reset"></td><td>
</table>
</form>
</center>

</body>
</html>