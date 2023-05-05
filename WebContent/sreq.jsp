<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Blood bank monitoring hospitals</title>
<link href="style.css" type="text/css" rel="stylesheet">
<style>

</style>

</head>
<body>
<div align="center"><h1 align="center" style="background-color: ;">
<span style="color: #ed2b59;">E-</span> 
<span style="color: #8a4f51;">Blood bank monitoring hospitals </span>
</h1>
</div>
<ul>
<li><a href="hhome.jsp">home</a></li>
<li class="active"><a href="sreq.jsp">SendRequest</a></li>
<li><a href="vs.jsp">Status</a></li>
 <li><a href="hrep.jsp">Report</a></li>
 <li><a href="index.html">Logout</a></li>

</ul>
<div align="center">
<h2>Send Request</h2>
<form action="sreqback.jsp">
<table>
<tr><td>PatientName:</td><td><input type="text" name="pname"></td></tr>
<tr><td>DiseaseName:</td><td><input type="text" name="dsname"></td></tr>
<tr><td>RequestBloodGroup:</td><td><input type="text" name="rbg"></td></tr>
<tr><td>Type:</td><td><select name="type">
<option>Red Cells</option>
<option>White Cells</option>
<option>platelets</option>
<option>Plasma</option>
<option>NormalBlood</option>
</select><br>
</td></tr>
<tr><td>Units:</td><td><select name="units">
<option>1
<option>2
<option>3
</select><br>
</td></tr>
<tr><td><input type="submit" value="SendRequest"></td><td><input type="reset" value="Reset"></td></tr>
</table>
</form>
</div>
</body>
</html>